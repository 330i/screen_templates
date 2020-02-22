import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:screen_templates/services/register.dart';
import 'package:screen_templates/views/result_page.dart';

final emailController = new TextEditingController();
final pwordController = new TextEditingController();

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(title: 'Login Test'),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {



    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
            ),
            Container(
              width: 300,
              height: 200,
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),

              ),
            ),
            Container(
              width: 300,
              height: 30,
              child: Text(
                "Email",
                style: TextStyle(fontSize: 20,
                color: Colors.black54),
              ),
            ),
            Container(
              width: 300,
              height: 25,
              child: TextField(
                controller: emailController,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              width: 300,
              height: 5,
            ),
            Container(
              width: 300,
              height: 20,
              child: Text(
                "Password",
                style: TextStyle(fontSize: 20,
                    color: Colors.black54),
              ),
            ),
            Container(
              width: 300,
              height: 40,
              child: TextField(
                controller: pwordController,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(color: Colors.lightBlue, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 4, offset: Offset(0, 2))
                  ]),
                  child: Material(
                    color: Colors.lightBlueAccent,
                    child: InkWell(
                      child: Center(
                          child: Text("Register",
                              style: Theme.of(context).textTheme.body1)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()));
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  height: 40.0,
                  width: 100.0,
                  decoration: BoxDecoration(color: Colors.lightBlue, boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 4, offset: Offset(0, 2))
                  ]),
                  child: Material(
                    color: Colors.lightBlueAccent,
                    child: InkWell(
                      child: Center(
                          child: Text("Login",
                              style: Theme.of(context).textTheme.body1)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResultPage()));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}