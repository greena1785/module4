import 'package:flutter/material.dart';
import 'package:module4/Question-61/desgin1.dart';
import 'package:module4/Question-61/desgin2.dart';
import 'package:module4/Question-61/desgin3.dart';

void main() => runApp(MyScreen61());

class MyScreen61 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(

        appBar: AppBar(
          title: Text('Question - 60'),
        ),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyDesgin1(),
                      ));
                    },
                    child: Text('Page - 1')),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyDesgin2(),
                      ));
                    },
                    child: Text('Page - 2')),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyDesgin3(),
                      ));
                    },
                    child: Text('Page - 3')),

              ],
            )
        ),
      ),
    );
  }
}
