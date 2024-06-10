import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AduanProvider extends GetConnect {
  Future<http.Response> getAduan() async {
    var url = Uri.parse('http://127.0.0.1:8000/api/auth/aduans');
    var response = await http.get(url);
    return response;
  }

  Future<http.Response> updateLike(int id, int newLikeCount) async {
    var url = Uri.parse('http://127.0.0.1:8000/api/auth/aduans/$id');
    var response = await http.put(url, body: jsonEncode({'like': newLikeCount}), headers: {'Content-Type': 'application/json'});
    return response;
  }
}
