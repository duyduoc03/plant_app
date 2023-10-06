import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArrivalsItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  ArrivalsItem(this.imagePath, this.name, this.price);

  @override
  Widget build(BuildContext context) {
    String displayName = name.length > 20 ? name.substring(0, 20) + '...' : name;

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
            displayName,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(
            price.toString(),
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}