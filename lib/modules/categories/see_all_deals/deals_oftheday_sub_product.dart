import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DealsOfTheDaySubProduct extends StatelessWidget {

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(25), bottomEnd: Radius.circular(25)),
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Deals Of The Day',
            style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: 50,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '50% Off',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '205 EGP',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: CupertinoColors.inactiveGray,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '105 EGP',
                      style: TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Saved 100 EGP',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '3 items in Stock',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.green,
                        ),
                        Container(
                          height: 50,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200,
                      child: Container(
                        // padding: EdgeInsets.all(2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: CupertinoColors.activeGreen,
                                    borderRadius: BorderRadiusDirectional.only(
                                      topEnd: Radius.circular(10),
                                    )),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent[100],
                                    borderRadius: BorderRadiusDirectional.only(
                                      bottomEnd: Radius.circular(10),
                                    )),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ), //da el moraba3 el a5dar eli gnbo el zrayer
              SizedBox(
                height: 6,
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Color(0xFF520A05),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Item Name, with full name it can be add till char (60 letter)',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ), // da eli feh el item name upto 60 chars
              Row(
                children: [
                  RatingBar.builder(
                      itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    allowHalfRating: true,
                    itemSize: 25,
                      ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add To favourite',
                      style: TextStyle(
                          color: CupertinoColors.destructiveRed,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ), // da el row eli feh el 5 stars rating
              SizedBox(height: 10,),
              Container(
                height: 175,
                width: double.infinity,
                child: ContainedTabBarView(
                    tabs:
                    [
                      Text(
                        'Description',
                      ),
                      Text(
                        'Ingredients',
                      ),
                      Text(
                        'Reviews',
                      ),
                    ],
                    views:
                    [
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Coconut milk is a white milky liquid extracted from coconuts; it has a creamy texture. it is a healthy alternative for cows milk, as it contains antioxidants and prevent heart disease. You can use it in making desserts such as icecreams, toppings and milkshakes.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          ),
                        ),
                      ), //container of description
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Row(
                                children: [
                                  Text(
                                    'Expirey Date',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Spacer(),
                                  Text(
                                    '1/12/2023',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: CupertinoColors.inactiveGray,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Size',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Spacer(),
                                  Text(
                                    '120 gm',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: CupertinoColors.inactiveGray,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Brand',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Nangshim',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                            color: CupertinoColors.activeBlue,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal
                                        ),
                                      ),
                                  // TextButton(
                                  //   child: Text(
                                  //       'Nangshim',
                                  //     style: TextStyle(
                                  //       decoration: TextDecoration.underline,
                                  //         color: CupertinoColors.activeBlue,
                                  //         fontSize: 12,
                                  //         fontWeight: FontWeight.normal
                                  //     ),
                                  //   ),
                                  //  onPressed: (){},
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ), //container of Ingredients
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children:
                            [
                              Row(
                                children: [
                                  Text(
                                    'User Name',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Spacer(),
                                  Text(
                                    'reviews products',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextButton(
                                    child: Text(
                                        '(146 Review)',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                   onPressed: (){},
                                  ),
                                ],
                              ),
                              Row(
                                children:
                                [
                                  Text(
                                    'Rate',
                                    style: TextStyle(
                                        color: CupertinoColors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  RatingBar.builder(
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.black,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    allowHalfRating: true,
                                    itemSize: 15,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Best Product Ever, Try it with some etc.... and you can recommend it for your friends',
                                style: TextStyle(
                                    color: CupertinoColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: TextButton(
                                    child: Text(
                                      'View More Reviews (7 reviews)',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal
                                      ),
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //container of reviews
                    ],
                  onChange: (index) => print(index),
                  tabBarProperties: TabBarProperties(
                    height: 50,
                    unselectedLabelStyle: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    background: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: Offset(1,-1), //da bytl3 el shadow bta3 el tabs fo2 shwaya w by3ml fasel ben el content wl taps
                          ),
                        ],

                      ),
                    ),
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red.shade900)
                  ),
                  child: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.grey.shade200,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'My Basket',
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.normal),
                              ),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 35,),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      'ITEMS',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      'TOTAL',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      '540',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
