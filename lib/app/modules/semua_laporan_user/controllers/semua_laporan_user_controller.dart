import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';
import '../../../data/aduan_provider.dart';
import 'dart:convert';

import '../models/aduan_model.dart';

class SemuaLaporanUserController extends GetxController {
  final AduanProvider aduanProvider = Get.put(AduanProvider());

  var laporanList = <Aduan>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchLaporan();
  }

  void fetchLaporan() async {
    final response = await aduanProvider.getAduan();
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      laporanList.value = data.map((e) => Aduan.fromJson(e)).toList();
      if (kDebugMode) {
        print('Data aduan berhasil didapatkan');
      }
    } else {
      Get.snackbar('Error', 'Failed to fetch laporan');
    }
  }

  void toggleFavoriteColor(int index) async {
    final token = SpUtil.getString('access_token') ?? '';
    var laporan = laporanList[index];
    bool isLiked = laporan.liked;
    int newLikeCount = isLiked ? laporan.like - 1 : laporan.like + 1;

    final response = await aduanProvider.updateLike(laporan.id, newLikeCount, token, !isLiked);
    if (response.statusCode == 200) {
      laporanList[index] = Aduan(
        id: laporan.id,
        judul: laporan.judul,
        deskripsi: laporan.deskripsi,
        gambar: laporan.gambar,
        createdAt: laporan.createdAt,
        like: newLikeCount,
        liked: !isLiked,
        username: laporan.username,
      );
      laporanList.refresh();
    } else {
      Get.snackbar('Error', 'Failed to update like');
    }
  }
}