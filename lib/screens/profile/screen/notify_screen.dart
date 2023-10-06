import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notifications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Reset"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Notifications"),
                  content: Text("Không có thông báo mới nhất"),
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
        ),
      ),
    );
  }
}