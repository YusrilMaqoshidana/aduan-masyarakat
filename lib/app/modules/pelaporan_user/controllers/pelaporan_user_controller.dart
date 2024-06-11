import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sp_util/sp_util.dart';

class PelaporanUserController extends GetxController {
  var imageFile = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    } else {
      Get.snackbar('Error', 'No image selected');
    }
  }

  Future<void> submitAduanData(String judul, String lokasi, String keterangan) async {
    final userId = SpUtil.getInt('id').toString();
    if (imageFile.value == null) {
      Get.snackbar('Error', 'No image selected');
      return;
    }

    var uri = Uri.parse('https://backend-j-care-production.up.railway.app/api/auth/aduans');
    var request = http.MultipartRequest('POST', uri)
      ..fields['user_id'] = userId
      ..fields['judul'] = judul
      ..fields['lokasi'] = lokasi
      ..fields['keterangan'] = keterangan
      ..fields['like'] = '0' // Assuming default like count is 0
      ..fields['status'] = 'pending'; // Assuming default status is pending

    // Attach image file
    request.files.add(await http.MultipartFile.fromPath('gambar', imageFile.value!.path));

    try {
      var response = await request.send();

      if (response.statusCode == 201) {
        Get.snackbar('Success', 'Aduan submitted successfully');
        // Clear form or navigate to another page
      } else {
        Get.snackbar('Error', 'Failed to submit aduan');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to submit aduan: $e');
    }
  }
}
