import 'package:designs/layout/cubit/layout_cubit.dart';
import 'package:designs/layout/cubit/layout_states.dart';
import 'package:designs/modules/categories/categories_screen.dart';
import 'package:designs/modules/categories/see_all_deals/deal_of_the_day.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZumraLayout extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return BlocConsumer<ZumraLayoutCubit, ZumraLayoutStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          backgroundColor: Colors.white70.withOpacity(0.9),
          appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.height/8,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(25),bottomEnd: Radius.circular(25)),
            ),
            backgroundColor: Colors.white,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterLogo(),
            ),
            title: const Center(
              child: Text(
                'ZumraFood Republic',
                style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            actions:
            const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person,color: Colors.black,size: 50,),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(items: ZumraLayoutCubit.get(context).bottomNavItems,
            onTap: (int index){
              ZumraLayoutCubit.get(context).changeBottomNav(index);
            },
            backgroundColor: Colors.white,
            currentIndex: ZumraLayoutCubit.get(context).currentIndex,
          ),
          body: ZumraCategoriesScreen(),
        );
      },
    );
  }
}
