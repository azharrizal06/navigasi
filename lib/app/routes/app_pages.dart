import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nav/bindings/nav_binding.dart';
import '../modules/nav/views/nav_view.dart';
import '../modules/next/bindings/next_binding.dart';
import '../modules/next/views/next_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAV;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAV,
      page: () => NavView(),
      binding: NavBinding(),
    ),
    GetPage(
      name: _Paths.NEXT,
      page: () => const NextView(),
      binding: NextBinding(),
    ),
  ];
}
