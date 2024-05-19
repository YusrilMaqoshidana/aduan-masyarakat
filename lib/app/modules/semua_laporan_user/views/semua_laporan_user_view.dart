import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/semua_laporan_user_controller.dart';

class SemuaLaporanUserView extends GetView<SemuaLaporanUserController> {
  const SemuaLaporanUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SemuaLaporanUserView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SemuaLaporanUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
