import 'package:flutter/material.dart';
import 'package:karawan/login_page.dart';

void main() {
  runApp(AppR());
}
class AppR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RegisterPage(),);
  }
}
class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40, 30, 40, 50),
      child: Text('Register',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30)),);
  }
}

class FullName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40,30,40,0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)),
            hintText: 'Full Name',
            prefixIcon: Icon(Icons.alarm,color: Colors.white,),
        hintStyle: TextStyle(color: Colors.white, fontSize: 20)),

      ),);
  }
}

class DateOfBirth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40,10,40,0),
      child: TextField(

        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)),
            hintText: 'Date Of Birth',
            prefixIcon: Icon(Icons.calendar_today,color: Colors.white,),
            hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
      ),);
  }
}

class EmailAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40,10,40,0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)),
            hintText: 'Email Address',
            prefixIcon: Icon(Icons.email,color: Colors.white,),
            hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
      ),);
  }
}


class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(40,10,40,10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50)),
            hintText: 'Enter Password',
            prefixIcon: Icon(Icons.security,color: Colors.white,),
            hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
      ),);
  }
}

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 50,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80))),
          child: Text(
              "Login Now", style: TextStyle(color: Colors.white),),
          onPressed: () {
            print("Registered Successfully");
          },
        ));
  }
}

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: TextButton(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.underline,
          color: Colors.white
        ),
      ),
      onPressed: () {
        print("Forgot password");
//forgot password screen
      },
      child: Text('Forgot Password'),
    )
      ,);
  }
}

class Registr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: TextButton(
      style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 12,
            decoration: TextDecoration.underline,
            color: Colors.white
          )),
      onPressed: () {
        Navigator.push<Widget>(context,
            MaterialPageRoute<Widget>(builder: (context) => LoginPage()));
      },
      child: Text('Register'),
    ),
    );
  }
}


class RegisterPage extends StatelessWidget {
  @override
  const RegisterPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Registration Page',
        home: Scaffold(
            body: Container(height: (MediaQuery
                .of(context)
                .size
                .height),
              width: (MediaQuery
                  .of(context)
                  .size
                  .width),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pic.jpg'),
                    fit: BoxFit.cover),
              ),

              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Register(),
                      FullName(),
                      DateOfBirth(),
                      EmailAddress(),
                      Password(),
                      Registration(),
                      ForgetPassword(),
                      Registr()

                    ]

                ),

              ),


            )
        )
    );
  }
}
