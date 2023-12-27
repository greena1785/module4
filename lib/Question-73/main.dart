import 'package:flutter/material.dart';
import 'package:module4/Question-73/main73.dart';

void main() {
  runApp(MyScreen73());
}

class MyScreen73 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySplashPage(), // Use SplashScreen as the initial widget
    );
  }
}
