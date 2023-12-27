import 'package:flutter/material.dart';


class MyDesgin2 extends StatefulWidget {
  @override
  State<MyDesgin2> createState() => _MyDesgin2State();
}

class _MyDesgin2State extends State<MyDesgin2> {

  int selectedIndex = 1;

  int selectedIndexIs = 0;


  List<String> itemList = [
    "Kinza",
    "Maman",
    "Tanuki",
    "Gastrol",
  ];

  List<String> itemName = [
    "All",
    "Salad",
    "Pizza",
    "Asian",
    "Burger",
    "Dessert"
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Menu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(Icons.filter_alt_outlined),
                      SizedBox(
                        height: 21,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemList.length,
                      itemBuilder: (context, index) =>
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  left: 15,
                                  right: index == itemList.length - 1 ? 20 : 0),
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  color: index == selectedIndex
                                      ? Colors.amber
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(
                                '${itemList[index]}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21),
                              ),
                            ),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemName.length,
                      itemBuilder: (context, index) =>
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndexIs = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  left: 15,
                                  right: index == itemName.length - 1 ? 20 : 0),
                              padding: EdgeInsets.symmetric(horizontal: 8),

                              /* color: index == selectedIndexIs
                                ? Colors.amber
                                : Colors.white,*/

                              child: Text(
                                '${itemName[index]}',
                                style: TextStyle(
                                    color: index == selectedIndexIs
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 10,
                    ), itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Image.asset("assets/images/sandwich.jpg"),
                        )
                      ],
                    );
                  },),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(56),
                              topLeft: Radius.circular(56))),
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        //alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      //color: Colors.amber,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('Your Order',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 20)),
                                    ),
                                    Icon(Icons.delete_outline),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Burger',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold
                                          ),),
                                        Text('250g',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500
                                          ),),
                                      ],
                                    ),

                                    Text('\$ 7.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500
                                      ),),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Salad',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold
                                          ),),
                                        Text('350g',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500
                                          ),),
                                      ],
                                    ),

                                    Text('\$ 5.12',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500
                                      ),),
                                  ],
                                ),
                                SizedBox(
                                  height: 34,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      //color: Colors.amber,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text('Total',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 20)),
                                    ),
                                    Text('\$ 12.22',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ],
                                ),

                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.circular(24)
                                        ),
                                        child: Text('Add to Cart',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold
                                          ),),
                                      ),
                                    ],
                                  ),
                                )
                              ],

                            ),
                          )
                        ],
                      ),
                    ),

                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
