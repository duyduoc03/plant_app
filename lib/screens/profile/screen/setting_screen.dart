import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("example@gmail.com"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Xử lý khi nhấn vào mục Email
              print("Email pressed");
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Date of Birth"),
            subtitle: Text("January 1, 1990"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Xử lý khi nhấn vào mục Date of Birth
              print("Date of Birth pressed");
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Address"),
            subtitle: Text("123 Main St, City, Country"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Xử lý khi nhấn vào mục Address
              print("Address pressed");
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            subtitle: Text("English"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Xử lý khi nhấn vào mục Language
              print("Language pressed");
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Payment Information"),
            subtitle: Text("**** **** **** 1234"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Xử lý khi nhấn vào mục Payment Information
              print("Payment Information pressed");
            },
          ),
        ],
      ),
    );
  }
}