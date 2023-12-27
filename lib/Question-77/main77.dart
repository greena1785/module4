import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyScreen77());
}

class MyScreen77 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Phone number to call
  final String phoneNumber = "tel:+1234567890";

  // Phone number to send SMS
  final String smsNumber = "sms:+1234567890";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _launchURL(phoneNumber),
              child: Text("Make Phone Call"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchURL(smsNumber),
              child: Text("Send SMS"),
            ),
          ],
        ),
      ),
    );
  }

  // Function to launch URLs
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
