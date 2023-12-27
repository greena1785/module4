import 'package:flutter/material.dart';
import 'package:module4/Question-60/product.dart';

void main() => runApp(MyDesgin_1());

class MyDesgin_1 extends StatefulWidget {
  @override
  State<MyDesgin_1> createState() => _MyAppState();
}

class _MyAppState extends State<MyDesgin_1> {
  int selectedIndex = 0;

  //late Product product;

  List<String> itemList = [
    "Recommended",
    "Popular",
    "Noodels",
    "Pizza",
    "Burger",
    "Sandwich",
    "Water"
  ];

  var productList = [
    Product(price: 12, image:  "assets/soup.jpeg", Name: "Soba Soup", SubTitle: "No1. in Sales"),
    Product(price: 13, image:  "assets/food1.jpg", Name: "Sei Ua Samun Phrai", SubTitle:  "No1. in Sales"),
    Product(price: 14, image:  "assets/food2.jpg", Name: "Ratatoullie Pasta", SubTitle:  "No1. in Sales"),
    Product(price: 15, image:  "assets/soup.jpeg", Name: "Soba Soup", SubTitle:  "No1. in Sales"),
    Product(price: 16, image:  "assets/soup.jpeg", Name: "Soba Soup", SubTitle:  "No1. in Sales"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      home: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCircularButton(
                          icon: Icons.arrow_back,
                          color: Colors.black,
                          onPress: () {},
                        ),
                        CustomCircularButton(
                          icon: Icons.search,
                          color: Colors.black,
                          onPress: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Restaurant',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      '20-30 min',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '2.4 KM',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Restaurant',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          child: Container(
                            height: 70,
                            width: 70,
                            alignment: Alignment.center,
                            child: Image.asset("assets/r.png"),
                            /* child: Text('R',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50
                            ),),*/
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                              'Orange Sanwiches is Delicious',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                        Icon(
                          Icons.star_border,
                          color: Colors.amber,
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      /*child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Chip(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: BorderSide(color: Colors.white, width: 2),
                            ),

                            padding: EdgeInsets.symmetric(horizontal: 8, ),
                            label: Text('${itemList[index]}'),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(width: 16,);
                        },
                      ),*/
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index) => GestureDetector(
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
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    /*SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 150,
                              width: 150,
                              child: Image.asset("assets/images/r.jpg",
                                fit: BoxFit.cover,),
                            ),
                          ),
                        ],
                      ),
                    )*/
                    ListView.builder(
                      itemCount: productList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {

                        Product product = productList[index];

                        return Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage("assets/food1.jpg"),
                                    radius: 40,
                                    //backgroundColor: Colors.amber,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${product.Name}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "${product.SubTitle}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.amber
                                              ),
                                            ),
                                            Text(
                                              "\$ ${product.price}",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.navigate_next,
                                      size: 34,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class CustomCircularButton extends StatelessWidget {
  IconData icon;
  Color color;
  VoidCallback onPress;

  CustomCircularButton(
      {super.key,
        required this.icon,
        required this.color,
        required this.onPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      onPressed: onPress,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}

class CardItem extends StatelessWidget {

  Image image;
  String t1,t2,t3;

  CardItem(
      {super.key,
        required this.image,
        required this.t1,
        required this.t2,
        required this.t3,
        });
  @override
  Widget build(BuildContext context) {
    return   Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/food1.jpg"),
                backgroundColor: Colors.amber,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16),
                  child: Container(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        Text(
                          t1,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          t2,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        ),
                        Text(
                          '\$ $t3',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Icon(
                  Icons.navigate_next,
                  size: 34,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
