import 'package:blog/models/blog_app.dart';
import 'package:blog/services/auth.dart';
import 'package:blog/view/navigation/app_navigation%20controller.dart';
import 'package:blog/view_model/blog_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authService = AuthService();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController email =
      TextEditingController(text: kDebugMode ? 'shra131295@gmail.com' : '');
  TextEditingController password =
      TextEditingController(text: kDebugMode ? 'Shra@123' : '');
  String error = '';

  bool isPasswordValid(String password) {
    const String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    if (RegExp(pattern).hasMatch(password))
      return true;
    else
      return false;
  }

  bool isEmailValid(String email) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (!RegExp(pattern).hasMatch(email))
      return false;
    else
      return true;
  }

  @override
  Widget build(BuildContext context) {
    final BlogState state = context.watch<BlogState>();
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 24, 0, 32),
              child: Text(
                'SIGN IN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: email,
                validator: (String? email) {
                  if (isEmailValid(email!)) return null;

                  return 'Enter a valid email address';
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black.withOpacity(1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Email Address',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 24)),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: password,
                validator: (String? password) {
                  if (isPasswordValid(password!)) return null;

                  return 'Enter a valid Password';
                },
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black.withOpacity(1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Enter Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 24)),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80))),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await context.read<BlogNotifier>().signIn(
                          email.text.toString(),
                          password.text.toString(),
                          context);
                      if (state.user != null) {
                        context.read<AppNavigationController>().blog();
                      }
//                        Navigator.pushReplacement(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => BlogPage()));
                    }
                  },
                  child: Text(
                    'sign in',
                  )),
            ),
            TextButton(
                onPressed: () {
                  context.read<AppNavigationController>().signUp();
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text('Create New Account? Sign up')),
            Text(error),
          ],
        ),
      ),
    );
  }
}
