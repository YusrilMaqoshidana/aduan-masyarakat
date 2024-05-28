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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/logo.png', height: 125),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "J-CARE",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Poppins-ExtraBold',
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1D3557),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Selamat datang para pengguna, gunakan hak anda untuk melaporkan kerusakan fasilitas di sekitar anda!",
                    style: TextStyle(
                      color: const Color(0xFF1D3557),
                      fontFamily: 'Poppins-Bold',
                      fontSize: 24
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
