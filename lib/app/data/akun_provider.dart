import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

class AkunProvider extends GetConnect {
  // Update data akun melalui API
  Future<http.Response> updateAkun(Map<String, String> data) async {
    var url = Uri.parse('http://127.0.0.1:8000/api/auth/update'); 
    String? token = SpUtil.getString('access_token');  // Mengambil token dari penyimpanan

    // Jika token tidak ada, kembalikan null
    if (token == null) {
      return http.Response('Token is missing', 401);
    }

    var response = await http.put(
      url, // Menggunakan PUT karena biasanya update data menggunakan PUT
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(data),
    );

    return response;
  }
}
