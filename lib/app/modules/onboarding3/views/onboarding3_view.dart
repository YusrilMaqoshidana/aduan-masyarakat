import 'package:aduan/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding3_controller.dart';

class Onboarding3View extends GetView<Onboarding3Controller> {
  const Onboarding3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 250, 238),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 250, 238),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/tutorial3.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Pencatatan & Verifikasi',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Petugas akan mencatat laporan anda',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'dan silahkan mengecek pada menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'daftar pengaduan',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/page3.png',
                width: 30,
                height: 30,
              ),
              SizedBox(height: 100), // Menambahkan spasi antara gambar dan teks
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        child: Text(
                          'Selanjutnya',
                          style: TextStyle(
                            color: Color.fromARGB(255, 29, 53, 87),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
