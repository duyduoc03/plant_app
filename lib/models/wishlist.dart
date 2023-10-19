import 'package:flutter/material.dart';
import 'products.dart';
import 'accounts.dart';

class WishlistEntity {
  final int id;
  final Products products;
  final Accounts accounts;

  WishlistEntity({
    required this.id,
    required this.products,
    required this.accounts,
  });

  factory WishlistEntity.fromJson(Map<String, dynamic> json) {
    return WishlistEntity(
      id: json['id'],
      products: Products.fromJson(json['products']),
      accounts: Accounts.fromJson(json['accounts']),
    );
  }
}