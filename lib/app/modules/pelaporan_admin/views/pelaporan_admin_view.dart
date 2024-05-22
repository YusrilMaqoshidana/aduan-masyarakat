import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pelaporan_admin_controller.dart';

class PelaporanAdminView extends GetView<PelaporanAdminController> {
  const PelaporanAdminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PelaporanAdminView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PelaporanAdminView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
