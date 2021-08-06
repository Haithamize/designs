import 'package:designs/layout/cubit/layout_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZumraLayoutCubit extends Cubit<ZumraLayoutStates>{
  ZumraLayoutCubit() : super(ZumraLayoutInitialState());

  List<BottomNavigationBarItem> bottomNavItems =
  [
    const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_sharp), label: 'My Basket'),
    const BottomNavigationBarItem(icon: Icon(Icons.widgets_rounded), label: 'Categories'),
    const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
  ];

  int currentIndex = 1;

  static ZumraLayoutCubit get(context) => BlocProvider.of(context);

  changeBottomNav(int index){
    currentIndex = index;
    emit(ZumraLayoutChangeBottomNavState());
  }
}