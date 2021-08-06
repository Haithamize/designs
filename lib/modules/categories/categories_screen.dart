import 'package:designs/modules/categories/see_all_deals/deal_of_the_day.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ZumraCategoriesScreen extends StatelessWidget {
  const ZumraCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffix: Icon(Icons.search, color: Colors.black),
                  labelText: 'What are you looking for',
                  border: OutlineInputBorder(),
                ),
              ),
            ), //da el textformfield bta3 el search
            // SizedBox(height:5),
            Row(
              children: [
                Text(
                  'Delivered to: Elrehab city',
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'change',
                    style: TextStyle(
                        color: CupertinoColors.destructiveRed,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ), //w da el Deliverd to wl change f row
            Container(
                width: double.infinity,
                height: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Deal of The Day',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DealOfTheDay()));
                          },
                          child: const Text(
                            'See All Deals',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: CupertinoColors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 237,
                      child: ListView.separated(
                        shrinkWrap: true,
                          physics: BouncingScrollPhysics() ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildDealsOfTheDayListViewItem(),
                          separatorBuilder: (context, index) => SizedBox(width: 15),
                          itemCount: 7),
                    ), //de hatb2a el listviewitem
                  ],
                )), //da el moraba3 kolo eli shayel el row bta3 deal of the day w t7to el listview
            SizedBox(height: 15),
            Container(
                width: double.infinity,
                height: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Almost out of Stock',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See All Deals',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: CupertinoColors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 237,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics() ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildAlmostOutOfStockListViewItem(),
                          separatorBuilder: (context, index) => SizedBox(width: 15),
                          itemCount: 7),
                    ), //de hatb2a el listviewitem
                  ],
                )),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  width: double.infinity,
                  height: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text(
                            'New Arrivals',
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'See All Deals',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: CupertinoColors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 237,
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics() ,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => buildAlmostOutOfStockListViewItem(),
                            separatorBuilder: (context, index) => SizedBox(width: 15),
                            itemCount: 7),
                      ), //de hatb2a el listviewitem
                    ],
                  )),
            ),

          ],
        ),
      ),
    );
  }



  Widget buildDealsOfTheDayListViewItem() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        )
      ),
      width: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                height: 150,
                width: 200,
                color: Colors.blue,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10.0)),
                        color: Colors.red,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '50% off',
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {  },
                       icon: Icon(Icons.favorite_border_outlined,color: Colors.red, size: 35,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 130, start: 10),
                child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Noodles',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '105 EGP',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '205',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: CupertinoColors.inactiveGray,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              color: Colors.red,
              child: IconButton(
                icon: Text(
                  'ADD TO CART',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ))
        ],
      ),
    );
  }

  Widget buildAlmostOutOfStockListViewItem() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        )
      ),
      width: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                height: 150,
                width: 200,
                color: Colors.blueGrey,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10.0)),
                        color: Colors.red,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '3 items Left',
                          style: TextStyle(
                              color: CupertinoColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {  },
                      icon: Icon(Icons.favorite_border_outlined,color: Colors.red, size: 35,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 130, start: 10),
                child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Noodles',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '105 EGP',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '205',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: CupertinoColors.inactiveGray,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              color: Colors.deepPurpleAccent,
              child: IconButton(
                icon: Text(
                  'ADD TO CART',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ))
        ],
      ),
    );
  }
}
