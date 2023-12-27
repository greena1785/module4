import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen64());
}

class MyScreen64 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('City Selection'),
        ),
        body: CitySelection(),
      ),
    );
  }
}

class CitySelection extends StatefulWidget {
  @override
  _CitySelectionState createState() => _CitySelectionState();
}

class _CitySelectionState extends State<CitySelection> {
  String selectedCity = 'Select a City';

  List<String> cities = ['Navsari', 'Bilimora', 'Surat', 'Vapi', 'Vasald'];

  void showCitySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City'),
          content: SingleChildScrollView(
            child: ListBody(
              children: cities.map((city) {
                return RadioListTile(
                  title: Text(city),
                  value: city,
                  groupValue: selectedCity,
                  onChanged: (value) {
                    setState(() {
                      selectedCity = value!;
                    });
                    Navigator.of(context).pop();
                  },
                );
              }).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Selected City:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            selectedCity,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              showCitySelectionDialog();
            },
            child: Text('Select City'),
          ),
        ],
      ),
    );
  }
}
