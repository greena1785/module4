import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen78());
}

class MyScreen78 extends StatelessWidget {
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
  final TextEditingController _nameController = TextEditingController();
  final List<String> _nameList = [];
  late String _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView and Dialog Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Enter a Name'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _addNameToList();
            },
            child: Text('Add to List'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _nameList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _showNameDialog(_nameList[index]);
                  },
                  onLongPress: () {
                    _showContextMenu(_nameList[index]);
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(_nameList[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _addNameToList() {
    String name = _nameController.text.trim();
    if (name.isNotEmpty) {
      setState(() {
        _nameList.add(name);
        _nameController.clear();
      });
    }
  }

  void _showNameDialog(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selected Name'),
          content: Text('You clicked on: $name'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(String name) {
    _selectedItem = name;
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 0, 0, 0),
      items: [
        PopupMenuItem(
          value: 'delete',
          child: ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete Item'),
          ),
        ),
        PopupMenuItem(
          value: 'edit',
          child: ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit Item'),
          ),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value == 'delete') {
        _showDeleteConfirmationDialog();
      } else if (value == 'edit') {
        _editItem();
      }
    });
  }

  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Confirmation'),
          content: Text('Are you sure you want to delete $_selectedItem?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                _removeItem();
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _removeItem() {
    setState(() {
      _nameList.remove(_selectedItem);
    });
  }

  void _editItem() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController _editController = TextEditingController(text: _selectedItem);
        return AlertDialog(
          title: Text('Edit Item'),
          content: TextField(
            controller: _editController,
            decoration: InputDecoration(labelText: 'Enter the updated name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _updateItem(_editController.text);
                Navigator.of(context).pop();
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }

  void _updateItem(String newName) {
    setState(() {
      int index = _nameList.indexOf(_selectedItem);
      _nameList[index] = newName;
    });
  }
}
