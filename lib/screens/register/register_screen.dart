
import 'package:flutter/material.dart';
import '../../services/authentication.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../login/login_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterScreen extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  Future<void> register(BuildContext context) async {
    final String email = emailController.text;
    final String password = passwordController.text;
    final String passwordConfirm = passwordConfirmController.text;
    final String username = usernameController.text;

    final bool isSuccess = await AuthenticationService.register(
      email,
      password,
      passwordConfirm,
      username,
    );

    if (isSuccess) {
      // Đăng ký thành công
      Fluttertoast.showToast(
        msg: 'Đăng ký thành công',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      // Chuyển đến màn hình đăng nhập
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      // Đăng ký thất bại
      Fluttertoast.showToast(
        msg: 'Đăng ký thất bại',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Tài khoản',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12, // Đặt màu nền thành màu đen
              ),
              child: TextFormField(
                controller: usernameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'tên tài khoản',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black26), // Đặt màu chữ gợi ý thành màu trắng
                  filled: true, // Bật chế độ filled
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Mật khẩu',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12, // Đặt màu nền thành màu đen
              ),
              child: TextFormField(
                controller: passwordController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '******',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black26), // Đặt màu chữ gợi ý thành màu trắng
                  filled: true, // Bật chế độ filled
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Nhập lại mật khẩu',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12, // Đặt màu nền thành màu đen
              ),
              child: TextFormField(
                controller: passwordConfirmController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '******',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black26), // Đặt màu chữ gợi ý thành màu trắng
                  filled: true, // Bật chế độ filled
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12, // Đặt màu nền thành màu đen
              ),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'email',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black26), // Đặt màu chữ gợi ý thành màu trắng
                  filled: true, // Bật chế độ filled
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  register(context);
                },
                child: Text('Đăng ký'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Text('Hoặc có thể đăng nhập bằng'),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // TODO: Implement Facebook login logic
                  },
                  icon: Icon(Icons.facebook),
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: () {
                    // TODO: Implement Google login logic
                  },
                  icon: Icon(Icons.g_mobiledata_outlined),
                  color: Colors.deepOrangeAccent,
                ),
                IconButton(
                  onPressed: () {
                    // TODO: Implement iOS login logic
                  },
                  icon: Icon(Icons.apple),
                ),
              ],
            ),
            SizedBox(height: 16),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bạn đã có tài khoản?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()), // Thay LoginScreen bằng tên class hoặc Widget của trang đăng nhập
                      );
                    },
                    child: Text(
                      ' Đăng nhập',
                      style: TextStyle(
                        color: Colors.blue, // Đặt màu chữ thành màu xanh
                        decoration: TextDecoration.none, // Gạch chân chữ
                        fontSize: 16, // Đặt cỡ chữ
                        fontWeight: FontWeight.normal, // Đặt độ đậm nhạt của chữ
                      ),
                    ),
                  ),
                  Text(' tại đây'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}