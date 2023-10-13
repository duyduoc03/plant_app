import 'package:flutter/material.dart';
import 'package:plant_app/screens/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
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
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email/SĐT',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {
                        // TODO: Implement remember password logic
                      },
                    ),
                    Text('Nhớ mật khẩu'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Implement forgot password logic
                  },
                  child: Text('Quên mật khẩu?'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement login logic
                },
                child: Text('Login'),
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
                  icon: Icon(Icons.g_mobiledata),
                  color: Colors.orange,
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
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bạn chưa có tài khoản?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()), // Thay LoginScreen bằng tên class hoặc Widget của trang đăng nhập
                      );
                    },
                    child: Text(
                      ' Đăng ký',
                      style: TextStyle(
                        color: Colors.blue, // Đặt màu chữ thành màu xanh
                        decoration: TextDecoration.underline, // Gạch chân chữ
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