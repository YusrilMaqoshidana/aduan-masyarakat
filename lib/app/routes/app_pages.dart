import 'package:get/get.dart';
import '../modules/pelaporan_admin/bindings/pelaporan_admin_binding.dart';
import '../modules/pelaporan_admin/views/pelaporan_admin_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PELAPORAN_ADMIN;

  static final routes = [
    GetPage(
      name: _Paths.PELAPORAN_ADMIN,
      page: () => const PelaporanAdminView(),
      binding: PelaporanAdminBinding(),
    ),
  ];
}
