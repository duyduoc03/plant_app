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
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 100),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/login.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: 32),
                TextFormField(
                  controller: usernameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập tên tài khoản';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Tài khoản',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập mật khẩu';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    border: OutlineInputBorder(),
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    child: Text('Đăng nhập'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      navigateToRegisterScreen();
                    },
                    child: Text('Đăng ký'),
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