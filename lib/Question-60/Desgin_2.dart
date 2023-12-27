import 'package:flutter/material.dart';
import 'package:module4/Question-60/Desgin_1.dart';




class MyDesgin_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'UI Design', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design 2",
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                //child: Container(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCircularButton(
                        icon: Icons.arrow_back,
                        color: Colors.black,
                        onPress: () {
                          Navigator.pop(context);
                        },
                      ),
                      CustomCircularButton(
                        icon: Icons.favorite_border,
                        color: Colors.black,
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(56),
                          topLeft: Radius.circular(56))),
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: -80,
                        child: CircleAvatar(
                          radius: 80,
                          backgroundImage:
                          AssetImage("assets/images/sandwich.jpg"),
                          //backgroundColor: Colors.purple,
                        ),
                      ),
                      SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              //color: Colors.amber,
                              margin: EdgeInsets.only(top: 100),
                              child: Text('Sei Ua Samun Phrai',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined),
                                    Text('50min'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text('4.8'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.local_fire_department,
                                      color: Colors.red,
                                    ),
                                    Text('325Kcal'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                                width: double.maxFinite,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment(-0.3, 0),
                                      child: Container(
                                        height: double.maxFinite,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Row(children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            '\$',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.1, 0),
                                      child: Container(
                                        height: double.maxFinite,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              '-',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white),
                                              child: Text(
                                                "1",
                                              ),
                                            ),
                                            Text(
                                              '+',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            /*Container(
                        
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(26)),
                              //color: Colors.red,
                              height: 45,
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text('\$${12}'),
                        
                              */ /*child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    left: 65,
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                        
                                            },
                                            child: Text('-',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24
                                            ),),
                                          ),
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.white,
                                            child: Text('1',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24
                                                )),
                                          ),
                                          */ /**/ /*Container(
                                            padding: EdgeInsets.all(12),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle, color: Colors.white),
                                            child: Text(
                                              "1",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24
                                              ),
                                            ),
                                          ),*/ /**/ /*
                        
                                          Text('+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24
                                          )),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.circular(26)),
                                      width: 80,
                                      height: 45,
                                    ),
                                  )
                                ],
                              ),*/ /*
                            ),*/
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Ingredienta',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 140,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage("assets/images/sandwich.jpg"),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        /*Image.asset("assets/images/sandwich.jpg",
                                            width: 52),*/
                                        Text("Sandwich"),
                                      ],
                                    ),
                                  ),
                                  separatorBuilder: (_, index) => SizedBox(
                                    width: 20,
                                  ),
                                  itemCount: 5),
                            ),SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                    child: Text('About',style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text("A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from chef parnass Savang of Atlanta's Talat Market"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
