import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigasi2/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('save utama '),
        centerTitle: true,
      ),
      body: Center(
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.NEXT);
                  },
                  child: Text("data")))),
    );
  }
}
