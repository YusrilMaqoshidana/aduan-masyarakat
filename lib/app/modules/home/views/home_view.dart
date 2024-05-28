import 'package:aduan/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.HOMEPAGE_USER);
              },
              child: Text("Homepage"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.PELAPORAN_USER);
              },
              child: Text("Pelaporan"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.SEMUA_LAPORAN_USER);
              },
              child: Text("Semua Laporan"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.AKUN_USER);
              },
              child: Text("Akun"),
            ),
          ],
        ),
      ),
    );
  }
}
