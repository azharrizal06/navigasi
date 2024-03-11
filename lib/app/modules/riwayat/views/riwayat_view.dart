import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi2/app/modules/home/views/home_view.dart';
import 'package:navigasi2/app/routes/app_pages.dart';

import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  const RiwayatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiwayatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RiwayatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.2,
                blurRadius: 3,
              ),
            ]),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          iconnav(
            lebar: lebar,
            tinggi: tinggi,
            action: (value) {
              Get.offAllNamed(Routes.HOME);
            },
            img: "assets/nav-home.png",
            iconColor: Colors.amber,
            label: "Home",
            textStyle: TextStyle(
                fontSize: 13, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          iconnav(
            lebar: lebar,
            tinggi: tinggi,
            action: (value) {
              Get.offAllNamed(Routes.PESANAN);
            },
            img: "assets/nav-order.png",
            iconColor: Colors.amber,
            label: "Pesanan",
            textStyle: TextStyle(
                fontSize: 13, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          iconnav(
            lebar: lebar,
            tinggi: tinggi,
            action: (value) {
              Get.offAllNamed(Routes.RIWAYAT);
            },
            img: "assets/nav-history.png",
            iconColor: Colors.red,
            label: "Riwayat",
            textStyle: TextStyle(
                fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          iconnav(
            lebar: lebar,
            tinggi: tinggi,
            action: (value) {
              Get.offAllNamed(Routes.PROFIL);
            },
            img: "assets/nav-profile.png",
            iconColor: Colors.amber,
            label: "Profile",
            textStyle: TextStyle(
                fontSize: 13, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
