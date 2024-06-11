import 'package:get/get.dart';

import '../modules/akun_user/bindings/akun_user_binding.dart';
import '../modules/akun_user/views/akun_user_view.dart';
import '../modules/detail_laporan_admin/bindings/detail_laporan_admin_binding.dart';
import '../modules/detail_laporan_admin/views/detail_laporan_admin_view.dart';
import '../modules/edit_akun_user/bindings/edit_akun_user_binding.dart';
import '../modules/edit_akun_user/views/edit_akun_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homepage_admin/bindings/homepage_admin_binding.dart';
import '../modules/homepage_admin/views/homepage_admin_view.dart';
import '../modules/homepage_user/bindings/homepage_user_binding.dart';
import '../modules/homepage_user/views/homepage_user_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navbar_admin/bindings/navbar_admin_binding.dart';
import '../modules/navbar_admin/views/navbar_admin_view.dart';
import '../modules/onboarding1/bindings/onboarding1_binding.dart';
import '../modules/onboarding1/views/onboarding1_view.dart';
import '../modules/onboarding2/bindings/onboarding2_binding.dart';
import '../modules/onboarding2/views/onboarding2_view.dart';
import '../modules/onboarding3/bindings/onboarding3_binding.dart';
import '../modules/onboarding3/views/onboarding3_view.dart';
import '../modules/pelaporan_admin/bindings/pelaporan_admin_binding.dart';
import '../modules/pelaporan_admin/views/pelaporan_admin_view.dart';
import '../modules/pelaporan_user/bindings/pelaporan_user_binding.dart';
import '../modules/pelaporan_user/views/pelaporan_user_view.dart';
import '../modules/profil_admin/bindings/profil_admin_binding.dart';
import '../modules/profil_admin/views/profil_admin_view.dart';
import '../modules/recovery_password/bindings/recovery_password_binding.dart';
import '../modules/recovery_password/views/recovery_password_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/semua_laporan_user/bindings/semua_laporan_user_binding.dart';
import '../modules/semua_laporan_user/views/semua_laporan_user_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/tap_geser/bindings/tap_geser_binding.dart';
import '../modules/tap_geser/views/tap_geser_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.PELAPORAN_ADMIN,
      page: () => PelaporanAdminView(),
      binding: PelaporanAdminBinding(),
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
      page: () => AkunUserView(),
      binding: AkunUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_AKUN_USER,
      page: () => EditAkunUserView(),
      binding: EditAkunUserBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE_ADMIN,
      page: () => const HomepageAdminView(),
      binding: HomepageAdminBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL_ADMIN,
      page: () => const ProfilAdminView(),
      binding: ProfilAdminBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING1,
      page: () => const Onboarding1View(),
      binding: Onboarding1Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING2,
      page: () => const Onboarding2View(),
      binding: Onboarding2Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING3,
      page: () => const Onboarding3View(),
      binding: Onboarding3Binding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => const ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TAP_GESER,
      page: () => TapGeserView(),
      binding: TapGeserBinding(),
    ),
    GetPage(
      name: _Paths.RECOVERY_PASSWORD,
      page: () => const RecoveryPasswordView(),
      binding: RecoveryPasswordBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_LAPORAN_ADMIN,
      page: () => const DetailLaporanAdminView(),
      binding: DetailLaporanAdminBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR_ADMIN,
      page: () => const NavbarAdminView(),
      binding: NavbarAdminBinding(),
    ),
  ];
}
