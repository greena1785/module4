import 'package:flutter/material.dart';
import 'package:module4/Question-74/page1.dart';

void main() => runApp(MyScreen74());

class MyScreen74 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Click Event',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Click Event'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MySecondAppPage(),
                      ));
                    },
                    child: Text('Click')),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
