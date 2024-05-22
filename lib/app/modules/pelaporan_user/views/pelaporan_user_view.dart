import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pelaporan_user_controller.dart';

class PelaporanUserView extends GetView<PelaporanUserController> {
  const PelaporanUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PelaporanUserView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PelaporanUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
