import 'package:flutter/material.dart';
import 'package:plant_app/screens/home_page.dart';
import 'package:plant_app/screens/profile/components/profile_pic.dart';
import '../../services/authentication.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../profile/account_screen.dart';
import '../register/register_screen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final AuthenticationService _authenticationService = AuthenticationService();

  Future<void> login() async {
    final String username = usernameController.text;
    final String password = passwordController.text;

    if (_formKey.currentState!.validate()) {
      final String avatar = await _authenticationService.getAvatar(username, password);
      final bool authenticated = await _authenticationService.authenticateUser(username, password);

      if (authenticated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage(avatar: avatar)),
        );
      } else {
        Fluttertoast.showToast(
          msg: 'Tài khoản hoặc mật khẩu không chính xác',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    }
  }

  void navigateToRegisterScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                SizedBox(height: 32),
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
                      hintText: 'Tài khoản',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black26),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Vui lòng nhập mật khẩu';
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
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // TODO: Implement forgot password logic
                    },
                    child: Text('Quên mật khẩu?'),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    child: Text('Đăng nhập'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(height: 8),
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
      ),
    );
  }
}