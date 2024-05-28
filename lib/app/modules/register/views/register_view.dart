import 'package:aduan/app/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 2, 57, 102),
      // ),
      backgroundColor: const Color.fromARGB(255, 2, 57, 102),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 250, 238),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Username',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Masukkan nama pengguna',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Email Address',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Masukkan alamat email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Masukkan password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Adjusted height here
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white), // Set text color to white
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 57, 102),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  RichText(
                    text: TextSpan(
                      text: 'Apakah sudah memiliki akun?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 53, 87),
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Login',
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 57, 102),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offAllNamed(Routes.LOGIN);
                            },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'J-Care',
                        style: TextStyle(
                          color: Color.fromARGB(255, 29, 53, 87),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' created by Success Team',
                        style: TextStyle(
                          color: Color.fromARGB(255, 29, 53, 87),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
