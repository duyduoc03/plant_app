import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
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
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement login logic
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
            Align(
              alignment: Alignment.center,
              child: Text('Bạn đã có tài khoản? Đăng nhập tại đây'),
            ),
          ],
        ),
      ),
    );
  }
}