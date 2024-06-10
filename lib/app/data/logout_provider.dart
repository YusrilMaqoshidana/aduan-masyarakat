import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LogoutProvider extends GetConnect {
  Future<http.Response> out(String token) async {
    var url = Uri.parse('http://127.0.0.1:8000/api/auth/logout');
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token', 
      },
    );
    return response;
  }
}
