import 'package:flutter/material.dart';
import 'components/body.dart';


class AccountScreen extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Text(
  //       'Tài khoản',
  //       style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
    );
  }
}