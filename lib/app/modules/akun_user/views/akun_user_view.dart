import 'package:aduan/app/routes/app_pages.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png', height: 100),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text("Username"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Dev Akses Mikail",
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 15,
                    color: Color(0xFF1D3557),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Email Address"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "devaksesmikail12@gmail.com",
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 15,
                    color: Color(0xFF1D3557),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Phone Number"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "081398566760",
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 15,
                    color: Color(0xFF1D3557),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Address"),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Perumahan Taman Gading Blok FF-05",
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 15,
                    color: Color(0xFF1D3557),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FractionallySizedBox(
                  widthFactor: 1.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF1D3557), // Warna background
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.EDIT_AKUN_USER);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white, // Warna teks
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF1D3557), // Warna background
                      ),
                      onPressed: () {
                        // Aksi ketika tombol ditekan
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white, // Warna teks
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
