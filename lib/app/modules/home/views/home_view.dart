import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi2/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('navigasiggjgyfyfyf 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is',
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
            action: (e) {
              Get.offAllNamed(Routes.HOME);
            },
            img: "assets/nav-home.png",
            iconColor: Colors.red,
            label: "Home",
            textStyle: TextStyle(
                fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          iconnav(
            lebar: lebar,
            tinggi: tinggi,
            action: (e) {
              Get.offAllNamed(
                Routes.PESANAN,
              );
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
            action: (e) {
              Get.offAllNamed(Routes.RIWAYAT);
            },
            img: "assets/nav-history.png",
            iconColor: Colors.amber,
            label: "Riwayat",
            textStyle: TextStyle(
                fontSize: 13, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          iconnav(
            lebar: lebar,
            tinggi: tinggi,
            action: (e) {
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

class iconnav extends StatelessWidget {
  final ValueChanged<void>? action;
  final String? img;
  final Color? iconColor;
  final TextStyle? textStyle;
  final String? label;

  const iconnav({
    this.action,
    this.img,
    this.label,
    this.iconColor,
    this.textStyle,
    super.key,
    required this.lebar,
    required this.tinggi,
  });

  final double lebar;
  final double tinggi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action!("");
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.white,
        width: lebar / 4,
        height: tinggi,
        child: Column(
          children: [
            Image.asset(img!, color: iconColor, height: 20),
            SizedBox(
              height: 5,
            ),
            Text(
              label!,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
