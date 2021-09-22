import 'package:blog/core/navigation.dart';
import 'package:blog/models/blog.dart';
import 'package:blog/view/blog_page.dart';
import 'package:blog/view/create_blog.dart';
import 'package:blog/view/navigation/app_navigation_state.dart';
import 'package:blog/view/post_comment.dart';
import 'package:blog/view/signin.dart';
import 'package:blog/view/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';

import '../wrapper.dart';

class AppNavigationController extends AppFlowController<AppNavigationState> {
  AppNavigationController() : super(AppNavigationState());
  late Blog bloga;

  set state(AppNavigationState state) {
    print('''
    OldState: ${this.state}
    NewState: $state''');
    super.state = state;
  }

  void init() {
    print('Initializing...');
  }

  void signIn() {
    state = state.rebuild((AppNavigationStateBuilder b) =>
        b.authentication = Authentication.signIn);
  }

  void blog() {
    state = state.rebuild((AppNavigationStateBuilder b) =>
        b.authentication = Authentication.blog);

    state = state.rebuild((b) => b..blogRoute = null);
  }

  void signUp() {
    state = state.rebuild((AppNavigationStateBuilder b) =>
        b.authentication = Authentication.signUp);
  }

  void createBlog() {
    state = state.rebuild(
        (AppNavigationStateBuilder b) => b.blogRoute = BlogRoute.createBlog);
  }

  void blogPage({required Blog blog}) {
    bloga = blog;
    state = state.rebuild(
        (AppNavigationStateBuilder b) => b.blogRoute = BlogRoute.blogPage);
  }

  @override
  List<Page<Object>> onGeneratePages(
      AppNavigationState state, List<Page<Object>> currentPages) {
    return <Page<Object>>[
      MaterialPage<Object>(child: Wrapper()),
      if (state.authentication == Authentication.blog) ...[
        MaterialPage<Object>(child: BlogPage()),
        if (state.blogRoute == BlogRoute.createBlog) ...[
          MaterialPage<Object>(child: CreateBlog()),
        ] else if (state.blogRoute == BlogRoute.blogPage)
          MaterialPage<Object>(child: PostComment(blog: bloga))
        else if (state.blogRoute == null)
          MaterialPage(child: BlogPage())
      ] else if (state.authentication == Authentication.signUp)
        MaterialPage<Object>(child: SignUp())
      else
        MaterialPage<Object>(child: SignIn())
    ];
  }
}

enum Authentication { signIn, signUp, blog }
enum BlogRoute { blogPage, createBlog }
