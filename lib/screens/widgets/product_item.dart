import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/constant/dimension_constant.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  ProductItem(this.imagePath, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 120.0,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(
            price,
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}