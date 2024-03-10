import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/nav_controller.dart';

class NavView extends GetView<NavController> {
  const NavView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavView'),
        centerTitle: true,
      ),
      body: Obx(
        () => AnimatedSwitcher(
          duration: Duration(milliseconds: 1000), // Durasi animasi
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: controller.myWidgets[controller.indexWidget.value],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          controller.changeIndexBottomNav(value);
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_collection_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.shop_outlined,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
