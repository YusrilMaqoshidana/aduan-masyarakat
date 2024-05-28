import 'package:aduan/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_user_controller.dart';

class AkunUserView extends GetView<AkunUserController> {
  const AkunUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Image(
                image: AssetImage('assets/images/logo.png'),
                width: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Nama Pengguna',
                style: TextStyle(
                  color: Color.fromRGBO(29, 53, 87, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Email Address'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Alamat Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Phone Number'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nomor Handphone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Address'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Alamat Tempat Tinggal',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.EDIT_AKUN_USER);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromRGBO(69, 123, 157, 1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.LOGIN);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color.fromRGBO(29, 53, 87, 1),
                    fixedSize: const Size(110, 40),
                  ),
                  child: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
