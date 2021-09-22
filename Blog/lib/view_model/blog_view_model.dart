import 'package:blog/models/blog.dart';
import 'package:blog/models/blog_app.dart';
import 'package:blog/models/comment.dart';
import 'package:blog/models/reply.dart';
import 'package:blog/services/auth.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<BlogNotifier, BlogState>(
      create: (_) => BlogNotifier(),
      child: child,
    );
  }
}

class BlogNotifier extends StateNotifier<BlogState> {
  BlogNotifier() : super(BlogState());
  AuthService authService = AuthService();

  Future<void> init() async {
    await authService.init();
    final String email = authService.getEmail();
    final String username = authService.getUser();

    state = state.rebuild((b) => b
      ..email = email
      ..username = username);
    print(state.username);
    state = state.rebuild((b) => b..user.username = state.username);
    print('initializing');
  }

  Future<void> register(
      String username, String email, String password, context) async {
    await authService.register(username, email, password, context);
  }

  Future<void> signIn(String email, String password, context) async {
    final u = await authService.signin(email, password, context);
    state = state.rebuild((b) {
      b.user = u?.toBuilder();
    });
  }

  Future<void> signOut() async {
    await authService.signOut();
  }

  Future<void> createBlog(String title, String content) async {
    final Blog blog = Blog((b) => b
      ..title = title
      ..content = content
      ..username = state.user?.username);
    state = state.rebuild((b) => b..blog);
    await authService.createBlog(blog);
  }

  Future<void> getBlog() async {
    final BuiltList<Blog> n = await authService.getBlog(state.user?.username);
    state = state.rebuild((BlogStateBuilder b) => b..blog = n.toBuilder());
  }

  Future<void> addComment(String comment, String docId, String uid) async {
    final Comment comments = Comment((b) => b
      ..comment = comment
      ..docId = docId
      ..uid = uid
      ..username = state.user?.username);
    await authService.addComment(comments);
  }

  Future<void> getComments(String docId) async {
    final BuiltList<Comment> n = await authService.getComments(docId);
    state = state.rebuild((b) => b..comment = n.toBuilder());
  }

  Future<void> like(String docId) async {
    authService.like(docId);
  }

  Future<void> getLike(String docId) async {
    final BuiltList<Blog> n = await authService.getLike(docId);
    state = state.rebuild((b) => b..blog = n.toBuilder());
  }

  Future<void> updateComment(
      String? comments, String? commentId, String? docId) async {
    final Comment comment = Comment((b) => b
      ..comment = comments
      ..commentId = commentId);
    await authService.updateComment(comment, docId!);
  }

  Future<void> addReply(String? replys, String? username, String? commentId,
      String? docId) async {
    final Reply reply = Reply((b) => b
      ..reply = replys
      ..username = state.user!.username);
    await authService.addReply(docId!, commentId!, reply);
  }

  Future<void> getReply(String replyId, String commentId) async {
    final BuiltList<Reply> n = await authService.getReply(replyId, commentId);
    state = state.rebuild((b) => b..getreply[commentId] = n);
  }

//  Future<void> getUser() async {
//    String email = authService.getUser();
//    final User user = User((b) => b..email = email);
//  }
}
