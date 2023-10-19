import 'package:flutter/material.dart';
import 'package:plant_app/model/attribute.dart';
import 'package:plant_app/screens/shop/components/plant_detail.dart';

class PlantItem extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final String category;
  final Attribute attribute;
  final String sss;


  PlantItem(this.name, this.description, this.price, this.imagePath,
      this.category, this.attribute, this.sss);

  @override
  Widget build(BuildContext context) {
    String displayName;
    double h, w;
    if(sss == 'featured'){
      h = 140.0;
      w = 120;
      displayName = name.length > 10 ? name.substring(0, 10) + '...' : name;
    }else{
      h = 120.0;
      w = double.infinity;
      displayName = name.length > 20 ? name.substring(0, 20) + '...' : name;
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlantDetail(
              name,
              description,
              price,
              imagePath,
              category,
              attribute.height.toString(),
              attribute.light,
              attribute.water
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                height: h,
                width: w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              displayName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(
              price.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}