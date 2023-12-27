import 'package:flutter/material.dart';

void main() => runApp(MySecondAppPage());

class MySecondAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'After Click ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('After Click Page'),
        ),
        body: Center(
          child: Container(
            child: Text('Patel Greena', textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
