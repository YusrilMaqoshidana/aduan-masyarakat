import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/accept_laporan_admin_controller.dart';

class AcceptLaporanAdminView extends GetView<AcceptLaporanAdminController> {
  const AcceptLaporanAdminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AcceptLaporanAdminView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AcceptLaporanAdminView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
