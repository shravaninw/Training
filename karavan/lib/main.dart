import 'package:flutter/material.dart';
import 'package:karawan/RegisterPage.dart';

void main() {
  runApp(AppL());
}
class AppL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(),);
  }
}
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40,40,10,60),
      child: Text('Login',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(60,30, 60, 10),
      child: TextField(

        decoration: InputDecoration(

          filled: true,
          fillColor: Colors.black,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            hintText: 'Email Address',
            prefixIcon: Icon(Icons.email,color: Colors.white,),
        hintStyle: TextStyle(color: Colors.white , fontSize: 20)),

      ),
    );
  }
}

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(60,10,60,30),
      child: TextField(

        obscureText: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          hintText: 'Enter Password',
          prefixIcon: Icon(Icons.lock,color: Colors.white,),
          hintStyle: TextStyle(color: Colors.white , fontSize: 20)
        ),
      ),
    );
  }
}

class LoginNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80))),
          child: Text("Login Now", style: TextStyle(color: Colors.white , fontSize: 15)),
          onPressed: () {
            print("logged");
          },
        ));
  }
}

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 15,
            decoration: TextDecoration.underline,
            color: Colors.white
          ),
        ),
        onPressed: () {
          print("Forgot password");
//forgot password screen
        },
        child: Text('Forgot Password'),
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40,1,40 ,50),
      child: TextButton(
        style: TextButton.styleFrom(
            textStyle: TextStyle(
          fontSize: 15,
          decoration: TextDecoration.underline,
              color: Colors.white,
        )),
        onPressed: () {
          Navigator.push<Widget>(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: Text('Register'),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  LoginPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login Page',
        home: Scaffold(
            body: (Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic.jpg'), fit: BoxFit.cover),
          ),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Login(),Email(), Password(), LoginNow(),ForgetPassword(), Register()])),
        ))));
  }
}
