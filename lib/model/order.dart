import 'package:plant_app/model/plant.dart';

class Order {
  final int orderId;
  final int userId;
  final int quantity;
  final DateTime orderDate;
  final double totalAmount;
  final String status;
  final Plant plant;

  Order({
    required this.orderId,
    required this.userId,
    required this.quantity,
    required this.orderDate,
    required this.totalAmount,
    required this.status,
    required this.plant,
  });
}

List<Order> demoCart = [
  Order(
    orderId: 1,
    userId: 1,
    quantity: 1,
    orderDate: DateTime.now(),
    totalAmount: demoPlants[0].price * 2,
    status: "Pending",
    plant: demoPlants[0], // Add the plant property
  ),
  Order(
    orderId: 2,
    userId: 1,
    quantity: 2,
    orderDate: DateTime.now(),
    totalAmount: demoPlants[1].price * 2,
    status: "Pending",
    plant: demoPlants[1], // Add the plant property
  ),
  Order(
    orderId: 3,
    userId: 1,
    quantity: 10,
    orderDate: DateTime.now(),
    totalAmount: demoPlants[2].price * 10,
    status: "Pending",
    plant: demoPlants[2], // Add the plant property
  ),
];