import 'package:flutter/material.dart';

void main() => runApp(MyProfilePage());

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Center(
          child: Column(
            children: [

              CircleAvatar(
                radius: 80,
              //  backgroundColor: Colors.purple,
                backgroundImage:
                AssetImage("assets/greena.jpg"),
              ),
              const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Bhatt Street, Gandevi'),
                subtitle: Text('District Navsari'),
              ),
              const SizedBox(height: 8),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('8200438022'),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('greenapatel20@gmail.com'),
              ),
            ],
          )
        ),
      ),
    );
  }
}
