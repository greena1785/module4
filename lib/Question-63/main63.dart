import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyScreen63());
}

class MyScreen63 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Alert Dialog and Toast'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose an option'),
          content: Text('This is an example alert dialog.'),
          actions: [
            TextButton(
              onPressed: () {
                _showToast('Positive Button Clicked');
                Navigator.of(context).pop();
              },
              child: Text('Positive'),
            ),
            TextButton(
              onPressed: () {
                _showToast('Negative Button Clicked');
                Navigator.of(context).pop();
              },
              child: Text('Negative'),
            ),
            TextButton(
              onPressed: () {
                _showToast('Neutral Button Clicked');
                Navigator.of(context).pop();
              },
              child: Text('Neutral'),
            ),
          ],
        );
      },
    );
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
