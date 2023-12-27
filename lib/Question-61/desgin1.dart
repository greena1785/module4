import 'package:flutter/material.dart';
import 'package:module4/Question-61/food.dart';

class MyDesgin1 extends StatefulWidget {
  @override
  State<MyDesgin1> createState() => _MyDesgin1State();
}

class _MyDesgin1State extends State<MyDesgin1> {
  int selectedIndex = 1;

  int selectedIndexIs = 0;

  List<Food>? foods;

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
  void initState() {
    // TODO: implement initState
    foods = [
      Food(
          imageName: "assets/images/sandwich.jpg",
          name: "Sandwich",
          rate: "4.5"),
      Food(
          imageName: "assets/images/burger.jpg",
          name: "Burger",
          rate: "4.5"),
      Food(
          imageName: "assets/images/pizza.jpg",
          name: "Pizza",
          rate: "4.5"),
      Food(
          imageName: "assets/images/frenkie.jpg",
          name: "Frenkie",
          rate: "4.5"),
      Food(
          imageName: "assets/images/sandwich.jpg",
          name: "Sandwich",
          rate: "4.5"),
      Food(
          imageName: "assets/images/vegetable.jpg",
          name: "Vegetable",
          rate: "4.5"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
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
                    width: MediaQuery.of(context).size.width,
                    height: 50,
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
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemName.length,
                      itemBuilder: (context, index) => GestureDetector(
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
                  /* GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {

                      },)*/
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: foods!.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                child: Image.asset(
                                  foods![index].imageName,
                                  fit: BoxFit.fill,
                                )),
                            Text(foods![index].name),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.star,color: Colors.amberAccent,),
                                Icon(Icons.star,color: Colors.amberAccent,),
                                Icon(Icons.star,color: Colors.amberAccent,),
                                Icon(Icons.star,color: Colors.amberAccent,),
                                Icon(Icons.star,color: Colors.amberAccent,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(foods![index].rate),
                                Container(
                                  alignment: Alignment.center,
                                  color: Colors.amber,
                                  child: Icon(Icons.add,color: Colors.black,),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu,color: Colors.amber,),
              label: "Menu",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
          ],
        ),
      ),
    );
  }
}
