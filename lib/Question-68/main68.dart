import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen68());
}

class MyScreen68 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView with Context Menu'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          onLongPress: () {
            _showContextMenu(context, index);
          },
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
                onTap: () {
                  _editItem(index);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.visibility),
                title: Text('View'),
                onTap: () {
                  _viewItem(index);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
                onTap: () {
                  _deleteItem(index);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _editItem(int index) {
    // Implement your edit logic here
    print('Edit item at index $index');
  }

  void _viewItem(int index) {
    // Implement your view logic here
    print('View item at index $index');
  }

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
    // Implement your delete logic here
    print('Delete item at index $index');
  }
}
