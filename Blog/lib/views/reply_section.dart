import 'package:blog/models/blog_app.dart';
import 'package:blog/models/reply.dart';
import 'package:blog/view_model/blog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReplySection extends StatefulWidget {
  ReplySection(
      {Key? key,
      required this.docId,
      required this.commentId,
      required this.name})
      : super(key: key);

  String docId;
  String commentId;
  String name;
  @override
  _ReplySectionState createState() => _ReplySectionState();
}

class _ReplySectionState extends State<ReplySection> {
  void initState() {
    context.read<BlogNotifier>().getReply(widget.docId, widget.commentId);
  }

  @override
  Widget build(BuildContext context) {
    final BlogState state = context.watch<BlogState>();
    var replies = state.getreply[widget.commentId];
    return ListView.builder(
        shrinkWrap: true,
        itemCount: replies == null ? 0 : replies.length,
        itemBuilder: (BuildContext context, int index) {
          final Reply replys = replies![index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
            child: Container(
              constraints: BoxConstraints(maxWidth: 100),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                title: Text(replys.username ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(replys.reply ?? ''),
              ),
            ),
          );
        });
  }
}
