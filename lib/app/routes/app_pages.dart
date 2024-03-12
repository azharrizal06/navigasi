import 'package:get/get.dart';

import '../modules/cari/bindings/cari_binding.dart';
import '../modules/cari/views/cari_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nav/bindings/nav_binding.dart';
import '../modules/nav/views/nav_view.dart';
import '../modules/next/bindings/next_binding.dart';
import '../modules/next/views/next_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/vidio/bindings/vidio_binding.dart';
import '../modules/vidio/views/vidio_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAV;

  static final routes = [
    GetPage(
      transition: Transition.circularReveal,
      transitionDuration: Duration(seconds: 4),
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      transitionDuration: Duration(seconds: 4),
      transition: Transition.circularReveal,
      name: _Paths.NAV,
      page: () => NavView(),
      binding: NavBinding(),
    ),
    GetPage(
      transitionDuration: Duration(seconds: 4),
      transition: Transition.circularReveal,
      name: _Paths.NEXT,
      page: () => const NextView(),
      binding: NextBinding(),
    ),
    GetPage(
      name: _Paths.CARI,
      page: () => const CariView(),
      binding: CariBinding(),
    ),
    GetPage(
      name: _Paths.VIDIO,
      page: () => const VidioView(),
      binding: VidioBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => const ProfilView(),
      binding: ProfilBinding(),
    ),
  ];
}
