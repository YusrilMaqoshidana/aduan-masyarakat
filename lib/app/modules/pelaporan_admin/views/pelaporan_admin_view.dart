import 'package:aduan/widgets/showDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pelaporan_admin_controller.dart';

class PelaporanAdminView extends GetView<PelaporanAdminController> {
  const PelaporanAdminView({super.key});
  final bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 53, 87, 1),
        title: const Text(
          'Data Aduan Masyarakat',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            cardAduan('Jembatan rusak', 'assets/images/jembatan-rusak.png',
                'Jalan Sumatra', false, context, () {showMyDialog(context);}),
            cardAduan('Jembatan rusak', 'assets/images/jembatan-rusak.png',
                'Jalan Sumatra', false, context, () {}),
            cardAduan('Jembatan rusak', 'assets/images/jembatan-rusak.png',
                'Jalan Sumatra', false, context, () {}),
            cardAduan('Jembatan rusak', 'assets/images/jembatan-rusak.png',
                'Jalan Sumatra', false, context, () {}),
          ],
        ),
      ),
    );
  }

  Widget cardAduan(String judul, String image, String alamat, bool status,
      BuildContext context, VoidCallback onPressed) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            judul,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              alamat,
              style: const TextStyle(fontFamily: 'Poppins'),
            ),
          ),
          buttonStatus(status, context, onPressed),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width *
                0.7, // Set the desired width
            child: const Divider(
              color: Colors.black,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return alert(() { }, () { });
      },
    );
  }

  Widget buttonStatus(
      bool status, BuildContext context, VoidCallback onPressed) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.7,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              const Color.fromRGBO(29, 53, 87, 1), // Background color
          foregroundColor: Colors.white, // Text color
          textStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Text(
          status ? 'Status: Sudah diverifikasi' : 'Status: Belum diverifikasi',
        ),
      ),
    );
  }
}
