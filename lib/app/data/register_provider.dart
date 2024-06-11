import 'package:get/get.dart';

class RegisterProvider extends GetConnect {
  Future<Response> reg(var data) {
    var myHeader = {
      'Accept': 'application/json',
    };
    return post('https://backend-j-care-production.up.railway.app/api/auth/register', data, headers: myHeader);
  }
}
