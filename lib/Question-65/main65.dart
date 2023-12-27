import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen65());
}

class MyScreen65 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('AlertDialog Example-2'),
        ),
        body: Center(
          child: Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                // Show the alert dialog when the button is clicked
                _showAlertDialog(context);
              },
              child: Text('Show Alert Dialog'),
            ),
          ),
        ),
      ),
    );
  }

  // Function to show the alert dialog
  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Title'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.info,
                color: Colors.blue,
                size: 40.0,
              ),
              SizedBox(height: 10.0),
              Text('This is the alert message to exit.'),
            ],
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  closeAppUsingExit();
                },
                child: Text('Exit using Exit 0')),
          ],
        );
      },
    );
  }

  void closeAppUsingExit() {
    exit(0);
  }
}
