import 'package:blog/models/blog_app.dart';
import 'package:blog/view/navigation/app_navigation%20controller.dart';
import 'package:blog/view_model/blog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  void initState() {
    super.initState();
    var blogNotifier = context.read<BlogNotifier>();
    final c = context.read<AppNavigationController>();
    blogNotifier.init().then((value) {
      final state = blogNotifier.state;
      if (state.email == '') {
        c.signIn();
//        Navigator.pushReplacement(
//            context, MaterialPageRoute(builder: (context) => SignIn()));
      } else {
        c.blog();
//        Navigator.pushReplacement(
//            context, MaterialPageRoute(builder: (context) => BlogPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<BlogState>();
    // if (state.email == null) {
    return Material(child: Center(child: CircularProgressIndicator()));
    //}

    //return Text('Never reaches here');
  }
}
