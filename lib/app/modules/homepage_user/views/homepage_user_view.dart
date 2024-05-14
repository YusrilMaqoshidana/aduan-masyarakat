import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homepage_user_controller.dart';

class HomepageUserView extends GetView<HomepageUserController> {
  const HomepageUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomepageUserView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomepageUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
