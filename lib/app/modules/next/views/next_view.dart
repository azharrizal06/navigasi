import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/next_controller.dart';

class NextView extends GetView<NextController> {
  const NextView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: const Center(
        child: Text(
          'NextView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
