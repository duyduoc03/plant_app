import 'package:flutter/material.dart';
import 'products.dart';
import 'accounts.dart';

class Cart {
  final int id;
  final int quantity;
  final int totalPrice;
  final Products products;
  final Accounts accounts;
  final CartStatus status;

  Cart({
    required this.id,
    required this.quantity,
    required this.totalPrice,
    required this.products,
    required this.accounts,
    required this.status,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      quantity: json['quantity'],
      totalPrice: json['total_price'],
      products: Products.fromJson(json['products']),
      accounts: Accounts.fromJson(json['accounts']),
      status: cartStatusFromString(json['status']),
    );
  }
}

CartStatus cartStatusFromString(String status) {
  switch (status) {
    case 'PROCESSING':
      return CartStatus.processing;
    case 'COMPLETED':
      return CartStatus.completed;
    case 'CANCELLED':
      return CartStatus.cancelled;
    default:
      return CartStatus.processing;
  }
}
enum CartStatus {
  processing,
  completed,
  cancelled,
}