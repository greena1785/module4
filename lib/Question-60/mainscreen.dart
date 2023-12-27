import 'package:flutter/material.dart';

import 'Desgin_1.dart';
import 'Desgin_2.dart';

void main() => runApp(MyScreen60());

class MyScreen60 extends StatelessWidget {
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
                        builder: (context) => MyDesgin_1(),
                      ));
                    },
                    child: Text('Page - 1')),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyDesgin_2(),
                      ));
                    },
                    child: Text('Page - 2')),

              ],
            )
        ),
      ),
    );
  }
}
