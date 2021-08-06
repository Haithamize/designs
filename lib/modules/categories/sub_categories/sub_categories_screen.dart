import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
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
            'Main Category1',
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
              Icons.home,
              color: Colors.black,
              size: 50,
            ),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Container(
                width: double.infinity,
                height: 235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            'Main Category1',
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
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
                    ),
                    Container(
                      height: 175,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics() ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildMainCategory1ListViewItem(),
                          separatorBuilder: (context, index) => SizedBox(width: 0),
                          itemCount: 7),
                    ), //de hatb2a el listviewitem
                  ],
                )),
            SizedBox(height: 10,),
            Container(
                width: double.infinity,
                height: 235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            'Main Category1',
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
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
                    ),
                    Container(
                      height: 175,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics() ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildMainCategory1ListViewItem(),
                          separatorBuilder: (context, index) => SizedBox(width: 0),
                          itemCount: 7),
                    ), //de hatb2a el listviewitem
                  ],
                )),
            SizedBox(height: 10,),
            Container(
                width: double.infinity,
                height: 235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            'Main Category1',
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
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
                    ),
                    Container(
                      height: 175,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics() ,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildMainCategory1ListViewItem(),
                          separatorBuilder: (context, index) => SizedBox(width: 0),
                          itemCount: 7),
                    ), //de hatb2a el listviewitem
                  ],
                )),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  Widget buildMainCategory1ListViewItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey
            )
        ),
        width: 125,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 125,
              width: 125,
              color: Colors.blue,
            ),
            Container(
                width: double.infinity,
                color: Colors.red,
                child: IconButton(
                  icon: Text(
                    'Sub Category',
                    style: TextStyle(
                        color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: () {},
                ))
          ],
        ),
      ),
    );
  }
}
