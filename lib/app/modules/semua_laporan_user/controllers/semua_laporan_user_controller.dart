import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../data/aduan_provider.dart';
import 'dart:convert';

class SemuaLaporanUserController extends GetxController {
  final AduanProvider aduanProvider = Get.put(AduanProvider());

  var laporanList = <Map<String, dynamic>>[].obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchLaporan();
  }

  void fetchLaporan() async {
    final response = await aduanProvider.getAduan();
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      laporanList.value = data.map((e) => e as Map<String, dynamic>).toList();
      if (kDebugMode) {
        print('Data aduan berhasil didapatkan');
        print(laporanList);
      }
    } else {
      Get.snackbar('Error', 'Failed to fetch laporan');
    }
  }

  void toggleFavoriteColor(int index) async {
    var laporan = laporanList[index];
    int newLikeCount;
    if (laporan['liked'] == true) {
      newLikeCount = laporan['like'] - 1;
    } else {
      newLikeCount = laporan['like'] + 1;
    }

    final response = await aduanProvider.updateLike(laporan['id'], newLikeCount);
    if (response.statusCode == 200) {
      laporanList[index]['like'] = newLikeCount;
      laporanList[index]['liked'] = !(laporan['liked'] ?? false);
      laporanList.refresh();
    } else {
      Get.snackbar('Error', 'Failed to update like');
    }
  }
}
