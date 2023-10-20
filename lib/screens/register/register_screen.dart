import 'package:flutter/material.dart';
import '../../services/authentication.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../home_page.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatelessWidget {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
  TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  Future<void> register(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage(avatar: 'images/default_avatar.jpg',)),
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
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Đăng ký thất bại', style: TextStyle(color: Colors.red)),
              content: Text('Email này đã có người sử dụng. Vui lòng chọn một email khác.'),
              actions: <Widget>[
                TextButton(
                  child: Text('Đóng'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
              SizedBox(height: 8),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập tên tài khoản';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    hintText: 'Tên tài khoản',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black26), // Đặt màu chữ gợi ý thành màu trắng
                    filled: true, // Bật chế độ filled
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Email',
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
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập email';
                    }
                    // Kiểm tra định dạng email bằng biểu thức chính quy
                    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Địa chỉ email không hợp lệ';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black26), // Đặt màu chữ gợi ý thành màu trắng
                    filled: true, // Bật chế độ filled
                  ),
                ),
              ),
              SizedBox(height: 8),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập mật khẩu';
                    } if(value.length < 6) {
                      return 'Mật khẩu phải 6 kí tự';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.black54),
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
              SizedBox(height: 8),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập lại mật khẩu';
                    }
                    if (value != passwordController.text) {
                      return 'Mật khẩu không khớp';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.black54),
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
              SizedBox(height: 8),
              SizedBox(height: 8),
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
              // SizedBox(height: 8),
              // Align(
              //   alignment: Alignment.center,
              //   child: Text('Hoặc có thể đăng nhập bằng'),
              // ),
              // SizedBox(height: 8),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //       onPressed: () {
              //         // TODO: Implement Facebook login logic
              //       },
              //       icon: Icon(Icons.facebook),
              //       color: Colors.blue,
              //     ),
              //     IconButton(
              //       onPressed: () {
              //         // TODO: Implement Google login logic
              //       },
              //       icon: Icon(Icons.g_mobiledata_outlined),
              //       color: Colors.deepOrangeAccent,
              //     ),
              //     IconButton(
              //       onPressed: () {
              //         // TODO: Implement iOS login logic
              //       },
              //       icon: Icon(Icons.apple),
              //     ),
              //   ],
              // ),
              SizedBox(height: 8),
              SizedBox(height: 8),
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
      ),
    );
  }
}