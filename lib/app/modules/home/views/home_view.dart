import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Obx(() {
          return AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text(
              controller.selectedIndex.value == 0
                  ? 'Hompage'
                  : controller.selectedIndex.value == 1
                  ? 'Laporan'
                  : controller.selectedIndex.value == 2 ? 'Semua Laporan' : 'Akun'
                  
            ),
            foregroundColor: Colors.white,
            centerTitle: true,
          );
        }),
      ),
      body: Obx(() {
        return IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.views,
        );
      }), 
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.selectedIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              activeIcon: Icon(Icons.home, color: Colors.white),
              label: 'Homepage',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits, color: Colors.black),
              activeIcon: Icon(Icons.production_quantity_limits, color: Colors.white),
              label: 'Laporan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              activeIcon: Icon(Icons.person, color: Colors.white),
              label: 'Semua Laporan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              activeIcon: Icon(Icons.person, color: Colors.white),
              label: 'Akun',
            ),
          ],
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
        );
      }),
    );
  }
}
