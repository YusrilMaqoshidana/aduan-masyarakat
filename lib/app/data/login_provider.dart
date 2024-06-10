import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginProvider extends GetConnect {
  Future<http.Response> auth(Map<String, String> data) async {
    var url = Uri.parse('http://127.0.0.1:8000/api/auth/login'); // Ganti dengan URL endpoint API Anda
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    return response;
  }

  
}
