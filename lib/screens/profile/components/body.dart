import 'package:flutter/material.dart';
import 'package:plant_app/screens/profile/screen/help_screen.dart';
import 'package:plant_app/screens/profile/screen/notify_screen.dart';

import '../../login/login_screen.dart';
import '../screen/order_screen.dart';
import '../screen/setting_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  final String avatar;

  const Body({super.key, required this.avatar});
  Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Xác nhận đăng xuất'),
          content: const Text('Bạn có chắc chắn muốn đăng xuất?'),
          actions: <Widget>[
            TextButton(
              child: Text('Hủy'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Đăng xuất'),
              onPressed: () {
                // Thực hiện đăng xuất
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false,
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(avatar: avatar,),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Orders",
            icon: Icons.local_shipping_rounded,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderScreen()),
              );
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: Icons.notification_add,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: Icons.settings,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: Icons.help,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenterScreen()),
              );
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: Icons.logout,
            press: () {
              _showLogoutConfirmationDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
