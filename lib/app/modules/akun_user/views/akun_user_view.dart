import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_user_controller.dart';

class AkunUserView extends GetView<AkunUserController> {
  const AkunUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AkunUserView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AkunUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
