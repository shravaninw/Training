import 'package:flutter/material.dart';
import 'package:karawan/login_page.dart';

void main() {
  runApp(App());
}

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 90),
      child: const Text(
        'Karawan',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(70, 90, 70, 40),
      child: Center(
        child: Text(
          'From idea to project plan. We\'ll work to research, define and validate your product.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(180, 20, 180, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.circle,
            color: Colors.white,
            size: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.grey,
            size: 10,
          ),
          Icon(
            Icons.circle,
            color: Colors.grey,
            size: 10,
          ),
        ],
      ),
    );
  }
}

class ContinueWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ButtonTheme(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80))),
        child: Text(
          "Continue",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.push<Widget>(context,
              MaterialPageRoute<Widget>(builder: (context) => LoginPage()));
        },
      ),
    ));
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your applica
  // tion.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//final PageController controller=PageController(initialPage: 0);

    return MaterialApp(
        title: 'Karawan',
        home: Scaffold(
          body: Container(
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pic.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleWidget(),
                  TextWidget(),
                  DotIndicator(),
                  ContinueWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}
