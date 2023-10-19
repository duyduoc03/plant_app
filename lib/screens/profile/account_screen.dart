import 'package:flutter/material.dart';
import 'components/body.dart';


class AccountScreen extends StatelessWidget {
  final String avatar;
  static String routeName = "/profile";

  const AccountScreen({super.key, required this.avatar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(avatar: avatar,),
    );
  }
}