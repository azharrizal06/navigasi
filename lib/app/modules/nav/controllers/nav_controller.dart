import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi2/app/modules/cari/views/cari_view.dart';
import 'package:navigasi2/app/modules/home/views/home_view.dart';
import 'package:navigasi2/app/modules/profil/views/profil_view.dart';
import 'package:navigasi2/app/modules/vidio/views/vidio_view.dart';

class NavController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidgets = [
    HomeView(),
    CariView(),
    VidioView(),
    ProfilView(),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];
}
