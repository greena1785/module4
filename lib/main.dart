import 'package:flutter/material.dart';
import 'package:module4/Question-61/main61.dart';
import 'package:module4/Question-62/main62.dart';
import 'package:module4/Question-63/main63.dart';
import 'package:module4/Question-64/main64.dart';
import 'package:module4/Question-65/main65.dart';
import 'package:module4/Question-66/main66.dart';
import 'package:module4/Question-67/main67.dart';
import 'package:module4/Question-68/main68.dart';
import 'package:module4/Question-70/main70.dart';
import 'package:module4/Question-71/main71.dart';
import 'package:module4/Question-72/main72.dart';
import 'package:module4/Question-73/main.dart';
import 'package:module4/Question-74/main74.dart';
import 'package:module4/Question-75/main75.dart';
import 'package:module4/Question-76/main76.dart';
import 'package:module4/Question-77/main77.dart';
import 'Question-60/mainscreen.dart';
import 'Question-69/main69.dart';
import 'Question-78/main78.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module-4',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> indeX = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18'
  ];
  static List<String> qustionsList = [
    'Question - 60',
    'Question - 61',
    'Question - 62',
    'Question - 63',
    'Question - 64',
    'Question - 65',
    'Question - 66',
    'Question - 67',
    'Question - 68',
    'Question - 69',
    'Question - 70',
    'Question - 71',
    'Question - 72',
    'Question - 73',
    'Question - 74',
    'Question - 75',
    'Question - 76',
    'Question - 77',
    'Question - 78',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module-4'),
      ),
      body: ListView.builder(
        itemCount: indeX.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text(qustionsList[index].trim().toString()),
              onTap: () {
                int clicked = int.parse(indeX[index]);
                switch(clicked){
                  case 0:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen60(),));
                  }break;
                  case 1:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen61(),));
                  }break;
                  case 2:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MyScreen62(),));
                  }break;
                  case 3:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen63(),));
                  }break;
                  case 4:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen64(),));
                  }break;
                  case 5:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen65(),));
                  }break;
                  case 6:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen66(),));
                  }break;
                  case 7:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen67(),));
                  }break;
                  case 8:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen68(),));
                  }break;
                  case 9:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen69(),));
                  }break;
                  case 10:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen70(),));
                  }break;
                  case 11:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen71(),));
                  }break;
                  case 12:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen72(),));
                  }break;
                  case 13:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen73(),));
                  }break;
                  case 14:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen74(),));
                  }break;
                  case 15:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen75(),));
                  }break;
                  case 16:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen76(),));
                  }break;
                  case 17:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen77(),));
                  }break;
                  case 18:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyScreen78(),));
                  }break;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
