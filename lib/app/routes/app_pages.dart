import 'package:get/get.dart';

import '../modules/akun_user/bindings/akun_user_binding.dart';
import '../modules/akun_user/views/akun_user_view.dart';
import '../modules/edit_akun_user/bindings/edit_akun_user_binding.dart';
import '../modules/edit_akun_user/views/edit_akun_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homepage_user/bindings/homepage_user_binding.dart';
import '../modules/homepage_user/views/homepage_user_view.dart';
import '../modules/pelaporan_user/bindings/pelaporan_user_binding.dart';
import '../modules/pelaporan_user/views/pelaporan_user_view.dart';
import '../modules/semua_laporan_user/bindings/semua_laporan_user_binding.dart';
import '../modules/semua_laporan_user/views/semua_laporan_user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE_USER,
      page: () => const HomepageUserView(),
      binding: HomepageUserBinding(),
    ),
    GetPage(
      name: _Paths.PELAPORAN_USER,
      page: () => const PelaporanUserView(),
      binding: PelaporanUserBinding(),
    ),
    GetPage(
      name: _Paths.SEMUA_LAPORAN_USER,
      page: () => const SemuaLaporanUserView(),
      binding: SemuaLaporanUserBinding(),
    ),
    GetPage(
      name: _Paths.AKUN_USER,
      page: () => const AkunUserView(),
      binding: AkunUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_AKUN_USER,
      page: () => const EditAkunUserView(),
      binding: EditAkunUserBinding(),
    ),
  ];
}
