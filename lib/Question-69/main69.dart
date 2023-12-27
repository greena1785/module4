import 'package:flutter/material.dart';

void main() => runApp(MyScreen69());

class MyScreen69 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search Mail",
                    border: InputBorder.none,
                    icon: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.dehaze,
                        color: Colors.black,),
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/g.jpg"),
                      ),
                    )
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(15, (int i ) => _listItem(i),),),)
          /*SliverList(delegate: SliverChildDelegate(List.generate(10, (int i) {
            return _listItem(i);
          },),),)*/
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add, color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _listItem(int i){
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.amber,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Gmail",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("08:59",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          Text("Please Open your Gmail!!!!!!",
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("This is gmail app"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }

}