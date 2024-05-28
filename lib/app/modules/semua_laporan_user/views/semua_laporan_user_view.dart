import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/semua_laporan_user_controller.dart';

class SemuaLaporanUserView extends GetView<SemuaLaporanUserController> {
  const SemuaLaporanUserView({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data
    final List<Map<String, String>> laporanData = [
      {
        'judul': 'Laporan 1',
        'gambar': 'https://via.placeholder.com/150',
        'subtitle': 'Subtitle 1',
        'lokasi': 'Lokasi 1',
        'deskripsi': 'Deskripsi laporan 1',
        'username': 'user1',
        'time': '2h',
      },
      {
        'judul': 'Laporan 2',
        'gambar': 'https://via.placeholder.com/150',
        'subtitle': 'Subtitle 2',
        'lokasi': 'Lokasi 2',
        'deskripsi': 'Deskripsi laporan 2',
        'username': 'user2',
        'time': '4h',
      },
      {
        'judul': 'Laporan 3',
        'gambar': 'https://via.placeholder.com/150',
        'subtitle': 'Subtitle 3',
        'lokasi': 'Lokasi 3',
        'deskripsi': 'Deskripsi laporan 3',
        'username': 'user3',
        'time': '1d',
      },
      {
        'judul': 'Laporan 4',
        'gambar': 'https://via.placeholder.com/150',
        'subtitle': 'Subtitle 4',
        'lokasi': 'Lokasi 4',
        'deskripsi': 'Deskripsi laporan 4',
        'username': 'user4',
        'time': '2d',
      },
      {
        'judul': 'Laporan 5',
        'gambar': 'https://via.placeholder.com/150',
        'subtitle': 'Subtitle 5',
        'lokasi': 'Lokasi 5',
        'deskripsi': 'Deskripsi laporan 5',
        'username': 'user5',
        'time': '3d',
      },
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: laporanData.length,
        itemBuilder: (context, index) {
          final laporan = laporanData[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(laporan['gambar']!),
                  ),
                  title: Text(laporan['username']!),
                  subtitle: Text(laporan['time']!),
                  trailing: Icon(Icons.more_vert),
                ),
                Image.network(
                  laporan['gambar']!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          SizedBox(width: 16),
                          Icon(Icons.comment_outlined),
                          SizedBox(width: 16),
                          Icon(Icons.send),
                        ],
                      ),
                      Icon(Icons.bookmark_border),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: laporan['username']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' ${laporan['deskripsi']}'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    laporan['lokasi']!,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
