import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pelaporan_user_controller.dart';

class PelaporanUserView extends GetView<PelaporanUserController> {
  const PelaporanUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PelaporanUserView'),
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
                Text("Judul Aduan"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 20)),
                    label: Text("Judul Aduan"),
                  ),
                ),
                Text("Lokasi"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 20)),
                    label: Text("Lokasi Infrastruktur"),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
              const Text("Keterangan"),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1)),
                  label: const Text("Keterangan Kerusakan Infrastruktur"),
                  alignLabelWithHint: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.upload_file),
                        const SizedBox(width: 8),
                        const Text("Pilih File"),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FractionallySizedBox(
                widthFactor: 1.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1D3557), // Warna background
                  ),
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                  child: const Text(
                    "Ajukan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // Warna teks
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
