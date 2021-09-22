import 'package:blog/models/blog.dart';
import 'package:blog/models/blog_app.dart';
import 'package:blog/view/extensions.dart';
import 'package:blog/view/navigation/app_navigation%20controller.dart';
import 'package:blog/view_model/blog_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  void initState() {
    //context.read()<BlogNotifier>().getUsername();
    context.read<BlogNotifier>().getBlog();
  }

  @override
  Widget build(BuildContext context) {
    final BlogState state = context.watch<BlogState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blog",
        ),
        actions: [
          TextButton(
              onPressed: () {
                context.read<BlogNotifier>().signOut();
                context.read<AppNavigationController>().signIn();
              },
              child: Text(
                'Signout',
                style: TextStyle(color: Colors.white),
              )),
        ],
        leading: Text('Hi ${state.user?.username ?? ''} '),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<AppNavigationController>().createBlog();
//          Navigator.push(
//              context, MaterialPageRoute(builder: (context) => CreateBlog()));
        },
      ),
      body: ListView.builder(
        itemCount: state.blog.length,
        itemBuilder: (BuildContext context, int index) {
          final Blog bloga = state.blog[index];
          print(bloga.title);
          int like = bloga.like?.length ?? 0;
          return bloga.title == null
              ? const Text('')
              : InkWell(
                  onTap: () {
                    context
                        .read<AppNavigationController>()
                        .blogPage(blog: bloga);
//                        Navigator
//                        .push<void>(
//                          context,
//                          MaterialPageRoute<void>(
//                            builder: (BuildContext context) => PostComment(
//                              blog: bloga,
//                            ),
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Text(
                            bloga.title ?? '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text(bloga.datetime.toMoment()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              bloga.content ?? '',
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text('Written By ${bloga.author}')),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                (IconButton(
                                    icon: Icon(Icons.favorite),
                                    color: bloga.like?.contains(FirebaseAuth
                                                .instance.currentUser?.uid) ==
                                            true
                                        ? Colors.red
                                        : Colors.grey,
                                    onPressed: () {
                                      context
                                          .read<BlogNotifier>()
                                          .like(bloga.docId!)
                                          .then((value) => context
                                              .read<BlogNotifier>()
                                              .getLike(bloga.docId!));
                                      context.read<BlogNotifier>().getBlog();
                                      context
                                          .read<AppNavigationController>()
                                          .blog();
//                                      Navigator.pushReplacement(
//                                          context,
//                                          MaterialPageRoute(
//                                              builder: (context) =>
//                                                  BlogPage()));
                                    })),
                                Text('${like}'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
