import 'package:blog/view_model/blog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigation/app_navigation controller.dart';

class CreateBlog extends StatefulWidget {
  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  TextEditingController title = TextEditingController();
  TextEditingController author = TextEditingController();
  TextEditingController content = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //final String user = context.watch<User>().username!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Title',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  controller: title,
                  validator: (String? title) =>
                      title!.isEmpty ? 'Enter Title' : null,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: TextFormField(
                  minLines: 5,
                  maxLines: 50,
                  decoration: InputDecoration(
                      hintText: 'Add Blog',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  controller: content,
                  validator: (String? content) =>
                      content!.isEmpty ? 'Enter content' : null,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<BlogNotifier>()
                          .createBlog(title.text, content.text)
                          .then((value) =>
                              context.read<AppNavigationController>().blog());
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) => BlogPage()));
                    }
                  },
                  child: Text('Add Post'))
            ],
          ),
        ),
      ),
    );
  }
}
