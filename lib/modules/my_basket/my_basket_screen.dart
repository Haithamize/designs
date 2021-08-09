import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';

class MyBasketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //da scaffold bl appbar
    // return Scaffold(
    //   backgroundColor: Colors.grey[350],
    //   appBar: AppBar(
    //     leading: IconButton(
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //       icon: Icon(
    //         Icons.arrow_back_ios,
    //         color: Colors.black,
    //       ),
    //     ),
    //     toolbarHeight: MediaQuery.of(context).size.height / 8,
    //     shape: const RoundedRectangleBorder(
    //       borderRadius: BorderRadiusDirectional.only(
    //           bottomStart: Radius.circular(25), bottomEnd: Radius.circular(25)),
    //     ),
    //     backgroundColor: Colors.white,
    //     title: const Center(
    //       child: Text(
    //         'My Basket',
    //         style: TextStyle(
    //             color: CupertinoColors.black,
    //             fontSize: 18,
    //             fontWeight: FontWeight.normal),
    //       ),
    //     ),
    //     actions: const [
    //       Padding(
    //         padding: EdgeInsets.all(8.0),
    //         child: Icon(
    //           Icons.home,
    //           color: Colors.black,
    //           size: 50,
    //         ),
    //       ),
    //     ],
    //   ),
    //   body: Column(
    //     // crossAxisAlignment: CrossAxisAlignment.start,
    //     // mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       SizedBox(height: 15,),
    //       Container(
    //         decoration: BoxDecoration(
    //           border: Border.all(color: Colors.red.shade900),
    //           color: Colors.red,
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Column(
    //             children: [
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.shopping_cart,
    //                     color: Colors.grey.shade200,
    //                   ),
    //                   SizedBox(width: 5),
    //                   Text(
    //                     'My Basket',
    //                     style: TextStyle(
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.normal,
    //                       fontSize: 14
    //                     ),
    //                   ),
    //                   Spacer(),
    //                   Text(
    //                     'This is Mini Basket',
    //                     style: TextStyle(
    //                         color: CupertinoColors.white,
    //                         fontSize: 12,
    //                         fontWeight: FontWeight.normal),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(height: 10,),
    //               Text(
    //                 'Add 3 or More Products to Evolve Your Basket To Giant Basket and Enjoy Our Free Delivery',
    //                 style: TextStyle(
    //                     color: CupertinoColors.white,
    //                     fontSize: 12,
    //                     fontWeight: FontWeight.normal),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ), //da el container el a7mar eli f awl el screen
    //       Expanded(
    //         child: ListView.builder(
    //           physics: BouncingScrollPhysics(),
    //           itemBuilder: (context, index) => buildListViewItem(),
    //           itemCount: 5,
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 15),
    //         child: Align(
    //           alignment: Alignment.bottomCenter,
    //           child: SignInButtonBuilder(
    //             backgroundColor: Colors.red,
    //             onPressed: (){},
    //             text: 'CHOOSE YOUR PAYMENT METHOD',
    //             width: double.infinity,
    //             fontSize: 16,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 15,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade900),
            color: Colors.red,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'My Basket',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14
                      ),
                    ),
                    Spacer(),
                    Text(
                      'This is Mini Basket',
                      style: TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Add 3 or More Products to Evolve Your Basket To Giant Basket and Enjoy Our Free Delivery',
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ), //da el container el a7mar eli f awl el screen
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => buildListViewItem(),
            itemCount: 5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SignInButtonBuilder(
              backgroundColor: Colors.red,
              onPressed: (){},
              text: 'CHOOSE YOUR PAYMENT METHOD',
              width: double.infinity,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildListViewItem(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children:
        [
          Row(
            mainAxisSize: MainAxisSize.max,
            children:
            [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Product Name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Product Price',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.delete_sweep, color: Colors.deepOrangeAccent[200],)
                          ),
                        ],
                      ),
                    ),//da el column eli feh el product name w t7to el price
                    Row(
                      children: [
                        Text(
                          'Qty',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.add, color: Colors.black,)
                            ),
                            IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.remove, color: Colors.black,)
                            ),
                          ],
                        ),
                      ],
                    ), //da el row eli feh el Qty wl + and -
                  ],
                ),
              ),//da el column eli feh el product name and pproduct price and quantity
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black,
          ),
          SizedBox(height: 5,),
          Row(
            children:
            [
              Text(
                'TOTAL',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12
                ),
              ),
              Spacer(),
              Text(
                '5123 EGP',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
