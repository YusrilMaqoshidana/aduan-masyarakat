import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/profil_admin_controller.dart';

class ProfilAdminView extends GetView<ProfilAdminController> {
  @override
  final ProfilAdminController controller = Get.put(ProfilAdminController());
  ProfilAdminView({super.key});
  Widget dataProfile(String nama, String data, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nama,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.86,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2, color: const Color.fromRGBO(29, 53, 87, 1)),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            data,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    dataProfile(
                        "Nama", '${SpUtil.getString("username")}', context),
                    dataProfile(
                        "Email", '${SpUtil.getString("email")}', context),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                controller.logout();
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
        ],
      ),
    ));
  }
}
