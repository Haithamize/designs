import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoriesOtherScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 1/1.055,
            ),
            itemBuilder: (context,index)=> buildMainCategory1ListViewItem(),
          itemCount: 12,
        ),
      ),
    );
  }

  Widget buildMainCategory1ListViewItem() {
    return Container(
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
            color: Colors.blue[200],
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
    );
  }

}
