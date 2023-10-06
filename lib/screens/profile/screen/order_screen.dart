import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Orders"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Chưa có gì để xem ở đây"),
              SizedBox(height: 10),
              Text("Chúng tôi sẽ lưu trữ các giao dịch mua hàng của bạn ở đây ngay khi bạn thực hiện chúng"),
            ],
          ),
          actions: [
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: Center(
        child: Text("Order Screen"),
      ),
    );
  }
}