import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi2/app/modules/home/views/home_view.dart';

class NavController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidgets = [
    HomeView(),
    Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Reels',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Shop',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];
}
