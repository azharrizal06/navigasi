import 'package:get/get.dart';

import '../controllers/vidio_controller.dart';

class VidioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VidioController>(
      () => VidioController(),
    );
  }
}
