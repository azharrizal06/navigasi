import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/next_controller.dart';

class NextView extends GetView<NextController> {
  const NextView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NextView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NextView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
