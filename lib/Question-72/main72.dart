import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyScreen72());

class MyScreen72 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _requestPhoneCallPermission();
  }

  Future<void> _requestPhoneCallPermission() async {
    // Check if the user has already granted the permission
    var status = await Permission.phone.status;
    if (status.isGranted) {
      return;
    }

    // If not, request the permission
    if (await Permission.phone.request().isGranted) {
      // Permission is granted
      print("Phone call permission granted!");
    } else {
      // Permission is denied
      _showPermissionDeniedDialog();
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Permission Required"),
          content: Text("This app requires phone call permission."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Deny"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _openAppSettings();
              },
              child: Text("Allow"),
            ),
          ],
        );
      },
    );
  }

  void _openAppSettings() async {
    // Open the app settings where the user can grant the permission manually
    await launch('app-settings:');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Call App"),
      ),
      body: Center(
        child: Text("Phone Call App Content"),
      ),
    );
  }
}
