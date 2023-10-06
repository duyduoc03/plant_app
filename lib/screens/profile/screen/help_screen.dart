import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  static String routeName = "/help-center";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help Center"),
      ),
      body: ListView(
        children: [
          _buildHelpItem(context, "Cài đặt tài khoản"),
          _buildHelpItem(context, "Khắc phục sự cố"),
          _buildHelpItem(context, "Tính năng nổi bật"),
          _buildHelpItem(context, "Nhận trợ giúp để đăng nhập"),
        ],
      ),
    );
  }

  Widget _buildHelpItem(BuildContext context, String title) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.keyboard_arrow_right), // Icon ">"
      onTap: () {
        // Xử lý khi người dùng nhấn vào mục
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Text("Hướng dẫn $title"),
              actions: [
                TextButton(
                  child: Text("Đóng"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}