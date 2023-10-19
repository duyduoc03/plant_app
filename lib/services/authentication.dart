import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthenticationService {
  Future<bool> authenticateUser(String username, String password) async {
    final url = 'http://localhost:8888/api/auth/login'; // Thay thế bằng URL thực tế của bạn

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'username': username, 'password': password}),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final String? apiUsername = responseData['username'];

        if (apiUsername != null) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } catch (e) {
      print('Exception occurred: $e');
      return false;
    }
  }

  Future<String> getAvatar(String username, String password) async {
    final url = 'http://localhost:8888/api/auth/login';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'username': username, 'password': password}),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final String? apiUsername = responseData['username'];
        final String? apiAvt = responseData['avt'];

        if (apiUsername != null) {
          if (apiAvt != null) {
            return apiAvt;
          } else {
            return 'images/default_avatar.jpg';
          }
        }
      }
    } catch (e) {
      print('Exception occurred: $e');
    }

    return 'images/default_avatar.jpg';
  }

  static Future<bool> register(
      String email, String password, String passwordConfirm, String username) async {
    final String apiUrl = 'http://localhost:8888/api/auth/register';

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    final Map<String, String> body = {
      'email': email,
      'password': password,
      'passwordConfirm': passwordConfirm,
      'username': username,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      // Đăng ký thành công
      return true;
    } else {
      // Đăng ký thất bại
      return false;
    }
  }

}