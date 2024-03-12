import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cari_controller.dart';

class CariView extends GetView<CariController> {
  const CariView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('CariView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CariView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
