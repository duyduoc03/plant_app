import 'package:flutter/material.dart';
import 'package:plant_app/model/order_detail.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment";

  final List<OrderDetail> orderDetails;

  const PaymentScreen({Key? key, required this.orderDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Order Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: orderDetails.length,
              itemBuilder: (context, index) {
                final orderDetail = orderDetails[index];
                return ListTile(
                  title: Text("Plant ID: ${orderDetail.plantId}"),
                  subtitle: Text("Quantity: ${orderDetail.quantity}"),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                // Thực hiện thanh toán
              },
              child: Text("Pay Now"),
            ),
          ),
        ],
      ),
    );
  }
}