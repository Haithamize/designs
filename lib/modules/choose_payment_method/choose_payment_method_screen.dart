import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';

class PaymentMethodScreen extends StatefulWidget {
  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool _value = false;

  int val = -1;

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
            'Choose Your Payment Method',
            style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 50,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
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
                            fontSize: 14),
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add 3 or More Products to Evolve Your Basket To Giant Basket and Enjoy Our Free Delivery',
                    style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'TOTAL',
                        style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      Spacer(),
                      Text(
                        'EGP 7540',
                        style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Choose Your Preferred Payment Method',
            style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor:
                          Colors.red, //da hy8yr lon el circle mn barra
                    ),
                    child: ListTile(
                      minLeadingWidth: 5,
                      title: Text("Pay With Your Credit Card"),
                      leading: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        },
                        hoverColor: Colors.red,
                        activeColor: Colors
                            .black, //da hy8yr lon el radio button mn gwa y5leh eswd lma ytdas 3leh
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor:
                          Colors.red, //da hy8yr lon el circle mn barra
                    ),
                    child: ListTile(
                      title: Text("Pay As Cash On Delivery"),
                      leading: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        },
                        activeColor: Colors
                            .black, //da hy8yr lon el radio button mn gwa y5leh eswd lma ytdas 3leh
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Text(
                      'PROCEED',
                      style: TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
