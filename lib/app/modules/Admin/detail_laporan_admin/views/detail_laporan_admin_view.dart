import 'package:aduan/app/modules/User/semua_laporan_user/controllers/semua_laporan_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/detail_laporan_admin_controller.dart';

class DetailLaporanAdminView extends GetView<DetailLaporanAdminController> {
  const DetailLaporanAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SemuaLaporanUserController());
    final laporan = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Laporan Admin', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: const Color.fromRGBO(29, 53, 87, 1),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (laporan['gambar'] != null && laporan['gambar'].isNotEmpty)
                Image.network(
                  laporan['gambar'],
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Icon(
                      Icons.image_not_supported,
                      color: Colors.grey,
                      size: 50,
                    ),
                  ),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              const SizedBox(height: 16),
              Text(
                laporan['judul'] ?? 'No Title',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                laporan['created_at'] ?? 'Unknown Date',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                laporan['keterangan'] ?? 'No Description',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(
                    (laporan['liked'] ?? false)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        (laporan['liked'] ?? false) ? Colors.red : Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "${laporan['like'] ?? 0}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.updateStatus(laporan['id'], 'verified');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.green[800],
                        fixedSize: const Size(110, 40),
                      ),
                      child: Text('Verified', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    height: 50,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.updateStatus(laporan['id'], 'rejected');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.red[800],
                        fixedSize: const Size(110, 40),
                      ),
                      child: Text('Rejected', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
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
