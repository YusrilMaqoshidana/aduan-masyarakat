import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import '../../../data/aduan_provider.dart';
import 'dart:convert';

class SemuaLaporanUserController extends GetxController {
  final AduanProvider aduanProvider = Get.put(AduanProvider());

  // Mengubah laporanList untuk menyimpan data dalam bentuk List<Map<String, dynamic>>
  var laporanList = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchLaporan();
  }

  void fetchLaporan() async {
    try {
      final response = await aduanProvider.getAduan();
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        laporanList.value = data.cast<Map<String, dynamic>>(); // Menyimpan data JSON mentah sebagai List<Map<String, dynamic>>
        if (kDebugMode) {
          print('Data aduan berhasil didapatkan: $data');
        }
      } else {
        Get.snackbar('Error', 'Failed to fetch laporan');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch laporan: $e');
    }
  }

  void toggleFavoriteColor(int index) async {
    final token = SpUtil.getString('access_token') ?? '';
    if (token.isEmpty) {
      Get.snackbar('Error', 'Invalid or missing token');
      return;
    }

    var laporan = laporanList[index];
    bool isLiked = laporan['liked'] ?? false;
    int newLikeCount = isLiked ? (laporan['like'] ?? 0) - 1 : (laporan['like'] ?? 0) + 1;

    try {
      final response = await aduanProvider.updateLike(laporan['id'], newLikeCount, token, !isLiked);
      if (response.statusCode == 200) {
        laporan['like'] = newLikeCount;
        laporan['liked'] = !isLiked;
        laporanList[index] = laporan; 
        laporanList.refresh();
      } else {
        Get.snackbar('Error', 'Failed to update like');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to update like: $e');
    }
  }
}
