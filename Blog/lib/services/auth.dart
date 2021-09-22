import 'package:blog/models/blog.dart';
import 'package:blog/models/comment.dart';
import 'package:blog/models/reply.dart';
import 'package:blog/models/user.dart' as A;
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  late SharedPreferences prefs;

  // sign in
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  String getEmail() {
    String email = prefs.getString('email') ?? '';
    return email;
  }

  String getUser() {
    String username = prefs.getString('username') ?? '';
    print(username);
    return username;
  }

  @override
  Future<A.User?> signin(
      String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final Query<Map<String, dynamic>> user = FirebaseFirestore.instance
          .collection('register')
          .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .limit(1);
      QuerySnapshot<Map<String, dynamic>> collection = await user.get();
      final BuiltList<A.User?> list = collection.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        if (!doc.exists) {
          return null;
        }
        Map<String, dynamic> data = doc.data();
        return A.User.fromJson(data);
      }).toBuiltList();
      print(list);

      try {
        if (list.isEmpty) {
          return null;
        }
        var user = list[0];
        await prefs.setString('email', email);
        await prefs.setString('username', user!.username!);

        return user;
      } catch (e) {
        print(e.toString());
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
        print(e.toString());
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
      print(e.toString());
      return null;
    }
  }

//    await FirebaseAuth.instance
//        .signInWithEmailAndPassword(email: email, password: password);

//      final Query<Map<String, dynamic>> ref = FirebaseFirestore
//          .instance.collection('register').doc
//        (FirebaseAuth.instance.currentUser!.uid);
//      DocumentSnapshot<Map<String, dynamic>> collection = await ref.get();
//      final List<Map<String, dynamic>> list = collection
//          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data())
//          .toList();
//      print(list);
//      final List<Blog> blog = <Blog>[];
//      try {
//        for (int i = 0; i < list.length; i++) {
//          final Map<String, dynamic> a = list[i];
//          print(a);
//          Blog blogl = Blog.fromJson(a)!;
//          blog.add(blogl);
//        }
//      } catch (e) {
//        print(e.toString());
//      }
//      print(blog);
//      return blog.toBuiltList();

  // register
  @override
  Future<void> register(String username, String email, String password,
      BuildContext context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((UserCredential value) {
        final DocumentReference<Map<String, dynamic>> ref =
            FirebaseFirestore.instance.collection('register').doc();
        ref.set(<String, dynamic>{
          'datetime': FieldValue.serverTimestamp(),
          'username': username,
          'uid': FirebaseAuth.instance.currentUser!.uid,
        });
      }).then((value) {
        if (FirebaseAuth.instance.userChanges() != null) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Registered Successfully')));
        }
      });
    } catch (e) {
      print(e.toString());
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Future<void> signOut() async {
    prefs.remove('email');
    prefs.remove('username');
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> createBlog(Blog blog) async {
    final DocumentReference<Map<String, dynamic>> ref =
        FirebaseFirestore.instance.collection('blog').doc();
    ref
        .set(<String, dynamic>{
          'title': blog.title,
          'content': blog.content,
          'datetime': DateTime.now().toIso8601String(),
          'docId': ref.id,
          'author': blog.username,
          'uid': FirebaseAuth.instance.currentUser!.uid,
        })
        .then((value) => print('Blog Created'))
        .catchError((error) => print('Failed to create a blog'));
  }

  @override
  Future<BuiltList<Blog>> getBlog(String? username) async {
    final Query<Map<String, dynamic>> blogs = FirebaseFirestore.instance
        .collection('blog')
        .orderBy('datetime', descending: true);
    QuerySnapshot<Map<String, dynamic>> collection = await blogs.get();
    final List<Map<String, dynamic>> list = collection.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data())
        .toList();
    print(list);
    final List<Blog> blog = <Blog>[];
    try {
      for (int i = 0; i < list.length; i++) {
        final Map<String, dynamic> a = list[i];
        print(a);
        Blog blogl = Blog.fromJson(a)!;
        blog.add(blogl);
      }
    } catch (e) {
      print(e.toString());
    }
    print(blog);
    return blog.toBuiltList();
  }

  @override
  Future<void> addComment(Comment comment) async {
    final DocumentReference<Map<String, dynamic>> ref = FirebaseFirestore
        .instance
        .collection('blog')
        .doc(comment.docId)
        .collection('comments')
        .doc();
    await ref.set(<String, dynamic>{
      'comment': comment.comment,
      'username': comment.username,
      'commentId': ref.id,
      'docId': comment.docId,
      'datetime': DateTime.now().toIso8601String(),
      'uid': FirebaseAuth.instance.currentUser!.uid,
    });
  }

  @override
  Future<BuiltList<Comment>> getComments(String docId) async {
    final Query<Map<String, dynamic>> blogs = FirebaseFirestore.instance
        .collection('blog')
        .doc(docId)
        .collection('comments')
        .orderBy('datetime', descending: true);
    QuerySnapshot<Map<String, dynamic>> collection = await blogs.get();
    final List<Map<String, dynamic>> list = collection.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data())
        .toList();
    print(list);
    final List<Comment> comment = <Comment>[];
    try {
      for (int i = 0; i < list.length; i++) {
        final Map<String, dynamic> a = list[i];
        print(a.keys);
        comment.add(Comment.fromJson(a)!);
      }
    } catch (e) {
      print(e.toString());
    }
    print(comment);
    return comment.toBuiltList();
  }

  Future<void> updateComment(Comment comment, String docId) async {
    print(comment.commentId);
    final DocumentReference<Map<String, dynamic>> ref = FirebaseFirestore
        .instance
        .collection('blog')
        .doc(docId)
        .collection('comments')
        .doc(comment.commentId);
    ref.update(
      <String, dynamic>{
        'comment': comment.comment,
        'datetime': DateTime.now().toIso8601String(),
      },
    );
  }

  Future<void> addReply(String docId, String commentId, Reply reply) async {
    print(reply);
    final DocumentReference<Map<String, dynamic>> ref = FirebaseFirestore
        .instance
        .collection('blog')
        .doc(docId)
        .collection('comments')
        .doc(commentId)
        .collection('reply')
        .doc();
    ref.set({
      'username': reply.username,
      'reply': reply.reply,
      'datetime': DateTime.now().toIso8601String(),
    });
  }

  @override
  Future<BuiltList<Reply>> getReply(String docId, String commentId) async {
    final Query<Map<String, dynamic>> blogs = FirebaseFirestore.instance
        .collection('blog')
        .doc(docId)
        .collection('comments')
        .doc(commentId)
        .collection('reply')
        .orderBy('datetime', descending: true);
    QuerySnapshot<Map<String, dynamic>> collection = await blogs.get();
    final List<Map<String, dynamic>> list = collection.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data())
        .toList();
    print(list);
    final List<Reply> reply = <Reply>[];
    try {
      for (int i = 0; i < list.length; i++) {
        final Map<String, dynamic> a = list[i];
        print(a.keys);
        reply.add(Reply.fromJson(a)!);
      }
    } catch (e) {
      print(e.toString());
    }
    print(reply);
    return reply.toBuiltList();
  }

  Future<void> like(String docId) async {
    FirebaseFirestore.instance
        .collection('blog')
        .doc(docId)
        .set(<String, dynamic>{
      'like': FieldValue.arrayUnion(
          <String>[FirebaseAuth.instance.currentUser!.uid])
    }, SetOptions(merge: true));
  }

  @override
  Future<BuiltList<Blog>> getLike(String docId) async {
    final Query<Map<String, dynamic>> _collectionRef = FirebaseFirestore
        .instance
        .collection('blog')
        .doc(docId)
        .collection('like')
        .where('docId', isEqualTo: docId);

    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await _collectionRef.get();

    final List<Map<String, dynamic>> allData = querySnapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data())
        .toList();

    print(allData);
    final List<Map<String, dynamic>> results = allData;
    final List<Blog> list = <Blog>[];

    try {
      for (int i = 0; i < results.length; i++) {
        final Map<String, dynamic> a = results[i];

        list.add(Blog.fromJson(a)!);
      }
    } on Exception catch (e) {
      print(e);
    } catch (error, s) {
      print(error);
      print(s);
    }
    print(list);
    return list.toBuiltList();
  }
}
