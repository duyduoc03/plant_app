import 'package:flutter/material.dart';
import 'package:plant_app/model/order.dart';

class CartCard extends StatelessWidget {
  final Order order;
  final double width;

  const CartCard({
    Key? key,
    required this.order,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          order.plant.imageUrl,
          height: 80,
          width: 80,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.plant.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                order.plant.description,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                '\$${order.plant.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Quantity: ${order.quantity}',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                'Subtotal: \$${(order.plant.price * order.quantity).toStringAsFixed(2)}',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}