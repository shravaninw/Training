import 'dart:ui';

import 'package:blog/models/blog.dart';
import 'package:blog/models/blog_app.dart';
import 'package:blog/models/comment.dart';
import 'package:blog/view/extensions.dart';
import 'package:blog/view/navigation/app_navigation%20controller.dart';
import 'package:blog/view/reply_section.dart';
import 'package:blog/view_model/blog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostComment extends StatefulWidget {
  PostComment({
    Key? key,
    required this.blog,
  }) : super(key: key);
  Blog blog;

  @override
  _PostCommentState createState() => _PostCommentState();
}

class _PostCommentState extends State<PostComment> {
  void initState() {
    context.read<BlogNotifier>().getComments(widget.blog.docId ?? '');
  }

  TextEditingController comment = TextEditingController();
  TextEditingController reply = TextEditingController();

  bool isEnable = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _editKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _replyKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final BlogState state = context.watch<BlogState>();
    print(state.comment.length);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.blog.title ?? '',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.read<AppNavigationController>().blog();
//                Navigator.pushReplacement(context,
//                    MaterialPageRoute(builder: (context) => BlogPage()));
              }),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.blog.content ?? '',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Written By ${widget.blog.author}',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
              child: Text(
                'Comments',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ListView.builder(
                itemCount: state.comment.isEmpty ? 0 : state.comment.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final Comment user = state.comment[index];

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 16, 16),
                              child: CircleAvatar(
                                  child: Text(user.username!.substring(0, 1))),
                            ),
                            Column(children: [
                              Container(
                                constraints: BoxConstraints(maxWidth: 100),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ListTile(
                                  title: Text(user.username ?? '',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(user.comment!),
                                ),
                              ),
                              Text(user.datetime.toMoment()),
                              Container(
                                  child: user.username == state.user?.username
                                      ? TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                      title:
                                                          Text('Enter Comment'),
                                                      content: Form(
                                                        key: _editKey,
                                                        child: TextFormField(
                                                          controller: comment,
                                                          decoration:
                                                              const InputDecoration(
                                                                  fillColor:
                                                                      Colors
                                                                          .grey,
                                                                  filled: true,
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                  hintText:
                                                                      'Edit Comment'),
                                                          validator: (String?
                                                                  val) =>
                                                              val
                                                                      .toString()
                                                                      .isEmpty
                                                                  ? 'Add Comment'
                                                                  : null,
                                                        ),
                                                      ),
                                                      actions: [
                                                        IconButton(
                                                            onPressed: () {
                                                              context
                                                                  .read<
                                                                      BlogNotifier>()
                                                                  .updateComment(
                                                                      comment
                                                                          .text,
                                                                      user
                                                                          .commentId,
                                                                      widget
                                                                          .blog
                                                                          .docId)
                                                                  .then((value) =>
                                                                      comment
                                                                          .clear())
                                                                  .then((value) =>
                                                                      Navigator.pop(
                                                                          context));
                                                              context
                                                                  .read<
                                                                      BlogNotifier>()
                                                                  .getComments(
                                                                      widget
                                                                          .blog
                                                                          .docId!);
                                                              context
                                                                  .read<
                                                                      AppNavigationController>()
                                                                  .blogPage(
                                                                      blog: widget
                                                                          .blog);
//                                                                  Navigator.pushReplacement(
//                                                                      context,
//                                                                      MaterialPageRoute(
//                                                                          builder: (context) =>
//                                                                              PostComment(blog: widget.blog)));
                                                            },
                                                            icon: Icon(
                                                                Icons.send))
                                                      ],
                                                    ));
                                          },
                                          child: Text('Edit'))
                                      : TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                      title:
                                                          Text('Enter Reply'),
                                                      content: Form(
                                                        key: _replyKey,
                                                        child: TextFormField(
                                                          controller: reply,
                                                          decoration:
                                                              const InputDecoration(
                                                                  fillColor:
                                                                      Colors
                                                                          .grey,
                                                                  filled: true,
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                  hintText:
                                                                      'Enter Reply'),
                                                          validator: (String?
                                                                  val) =>
                                                              val
                                                                      .toString()
                                                                      .isEmpty
                                                                  ? 'Add Reply'
                                                                  : null,
                                                        ),
                                                      ),
                                                      actions: [
                                                        IconButton(
                                                            onPressed: () {
                                                              if (_replyKey
                                                                  .currentState!
                                                                  .validate()) {
                                                                context
                                                                    .read<
                                                                        BlogNotifier>()
                                                                    .addReply(
                                                                        reply
                                                                            .text,
                                                                        user
                                                                            .username,
                                                                        user
                                                                            .commentId,
                                                                        widget
                                                                            .blog
                                                                            .docId)
                                                                    .then((value) =>
                                                                        reply
                                                                            .clear())
                                                                    .then((value) => context
                                                                        .read<
                                                                            BlogNotifier>()
                                                                        .getReply(
                                                                            widget.blog.docId!,
                                                                            user.commentId!));
                                                                Navigator.pop(
                                                                    context);
                                                                ;
                                                              }
                                                            },
                                                            icon: Icon(
                                                                Icons.send)),
                                                      ],
                                                    ));
                                          },
                                          child: Text('Reply'))),
                            ]),
                          ],
                        ),
                      ),
                      ReplySection(
                          docId: widget.blog.docId ?? '',
                          commentId: user.commentId ?? '',
                          name: widget.blog.username ?? '')
                    ],
                  );
                }),
            Row(
              children: [
                Flexible(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: 'Add Comment'),
                        controller: comment,
                        validator: (String? val) =>
                            val.toString().isEmpty ? 'Add comment' : null,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<BlogNotifier>()
                            .addComment(
                              comment.text,
                              widget.blog.docId ?? '',
                              widget.blog.uid ?? '',
                            )
                            .then((value) => comment.clear());
                        context
                            .read<BlogNotifier>()
                            .getComments(widget.blog.docId!);

                        context
                            .read<AppNavigationController>()
                            .blogPage(blog: widget.blog);
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) =>
//                                    PostComment(blog: widget.blog)));
                      }
                    },
                    icon: Icon(Icons.send))
              ],
            ),
          ])),
        ));
  }
}
