import 'package:aduan/app/modules/pelaporan_admin/views/pelaporan_admin_view.dart';
import 'package:aduan/app/modules/profil_admin/views/profil_admin_view.dart';
import 'package:get/get.dart';

class NavbarAdminController extends GetxController {
  var selectedIndex = 0.obs;

  final views = [
    const PelaporanAdminView(),
    const ProfilAdminView(),
  ];
}
