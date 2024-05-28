import 'package:aduan/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding1_controller.dart';

class Onboarding1View extends GetView<Onboarding1Controller> {
  const Onboarding1View({Key? key}) : super(key: key);
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
                'assets/images/tutorial1.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Hubungi Petugas',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Segera menghubungi petugas',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Melalui aplikasi Layanan Pengaduan',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Kerusakan Fasilitas Umum',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 53, 87),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                  height: 20), // Menambahkan spasi antara tulisan dan gambar
              Image.asset(
                'assets/images/page1.png', // Ganti dengan path gambar Anda
                width: 30, // Sesuaikan dengan lebar gambar
                height: 30, // Sesuaikan dengan tinggi gambar
              ),
              SizedBox(height: 100), // Menambahkan spasi antara gambar dan teks
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.ONBOARDING2);
                      },
                      child: Text(
                        'Selanjutnya',
                        style: TextStyle(
                          color: Color.fromARGB(255, 29, 53, 87),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
