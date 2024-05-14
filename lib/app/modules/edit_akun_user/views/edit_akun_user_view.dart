import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_akun_user_controller.dart';

class EditAkunUserView extends GetView<EditAkunUserController> {
  const EditAkunUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditAkunUserView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EditAkunUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
