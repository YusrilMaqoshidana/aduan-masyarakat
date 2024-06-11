import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reject_laporan_admin_controller.dart';

class RejectLaporanAdminView extends GetView<RejectLaporanAdminController> {
  const RejectLaporanAdminView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RejectLaporanAdminView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RejectLaporanAdminView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
