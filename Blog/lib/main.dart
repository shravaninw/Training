import 'package:blog/core/navigation.dart';
import 'package:blog/view/navigation/app_navigation_state.dart';
import 'package:blog/view_model/blog_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'view/navigation/app_navigation controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(
    AppProvider(
      child: StateNotifierProvider<AppNavigationController, AppNavigationState>(
        create: (_) => AppNavigationController()..init(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Blog App',
      routeInformationParser: AppRouteParser(),
      routerDelegate: AppRouteDelegate<AppNavigationController>(
          context.read<AppNavigationController>()),
    );
  }
}
