import 'package:flutter/material.dart';
import 'package:plant_app/screens/profile/screen/help_screen.dart';
import 'package:plant_app/screens/profile/screen/notify_screen.dart';

import '../screen/order_screen.dart';
import '../screen/setting_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Orders",
            icon: Icons.local_shipping_rounded,
            press: () => {
            // Xử lý khi nhấn vào "My Account"
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderScreen()),
            )
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
              // Xử lý khi nhấn vào "Help Center"
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
              // Xử lý khi nhấn vào "Log Out"
              print("Log Out pressed");
            },
          ),
        ],
      ),
    );
  }
}