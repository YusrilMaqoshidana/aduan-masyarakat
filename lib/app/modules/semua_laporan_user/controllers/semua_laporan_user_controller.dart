import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SemuaLaporanUserController extends GetxController {
  //TODO: Implement SemuaLaporanUserController

  var favoriteColor = Colors.white.obs;
  var sendColor = Colors.white.obs;
  final count = 0.obs;

  // Fungsi untuk mengubah warna ikon favorite
  void toggleFavoriteColor() {
    if (favoriteColor.value == Colors.white) {
      favoriteColor.value = Colors.red;
      count.value += 1;
    } else {
      favoriteColor.value = Colors.white;
      count.value -= 1;
    }
  }

  // Fungsi untuk mengubah warna ikon send
  void toggleSendColor() {
    sendColor.value =
        sendColor.value == Colors.white ? Colors.grey : Colors.white;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
