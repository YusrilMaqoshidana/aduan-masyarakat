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
                Text("Silahkan Lengkapi Data Berikut ini"),
                SizedBox(
                  height: 10,
                ),
                Text("Username"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 20)),
                    label: Text("Username"),
                  ),
                ),
                Text("Email Address"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 20)),
                    label: Text("Email Address"),
                  ),
                ),
                Text("Phone Number"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)),
                  label: Text("Phone Number"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Address"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)),
                  label: const Text("Address"),
                  alignLabelWithHint: true,
                ),
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
                    backgroundColor: const Color(0xFF1D3557), // Warna background
                  ),
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Simpan", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Warna teks
                    ),),
                      ],
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // FractionallySizedBox(
              //   widthFactor: 1.0,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: const Color(0xFF1D3557), // Warna background
              //     ),
              //     onPressed: () {
              //       // Aksi ketika tombol ditekan
              //     },
              //     child: const Text(
              //       "Ajukan",
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.w500,
              //         color: Colors.white, // Warna teks
              //       ),
              //     ),
              //   ),
              // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
