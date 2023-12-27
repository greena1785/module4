

import 'package:flutter/material.dart';
import 'package:module4/Question-61/products.dart';



class MyDesgin3 extends StatefulWidget {
  @override
  State<MyDesgin3> createState() => _MyDesgin3State();
}

class _MyDesgin3State extends State<MyDesgin3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Cart',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Thu, 6th of June',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.add),
                        Text(
                          'Add to Order',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    /*Row(
                 //mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                     height: 100,
                     width: 100,

                     child: Image(image: AssetImage("assets/images/sandwich.jpg")),
                   ),
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('text'),
                         Text('text'),
                        ],
                     ),
                   ),
                   Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Text('\$ 7.00 '),
                         Container(
                           alignment: Alignment.center,
                           height: 30,
                           width: 30,
                           child: Icon(Icons.cancel_outlined),
                            decoration: BoxDecoration(

                             color: Colors.amber,
                             borderRadius: BorderRadius.all(Radius.circular(5)

                             )
                           ),
                         )
                       ],
                     ),
                   ),

                  ],
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
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: IntrinsicHeight(
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 85,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Image(
                                          image:
                                          AssetImage("${product.image}")),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('${product.Name}'),
                                          Row(
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
                                                  ' ${product.num}',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold),
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
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text('\$ ${product.price}'),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            child: Icon(Icons.cancel_outlined),
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(5))),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 27
                        ),),
                        Text('\$ 45.76',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 27
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),

                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Text('Checkout',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                    ),

                    /* Column(
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
                )*/
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
