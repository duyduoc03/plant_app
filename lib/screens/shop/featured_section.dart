import 'package:flutter/material.dart';
import 'package:plant_app/model/plant.dart';
import 'package:plant_app/screens/shop/components/plant_item.dart';

class FeaturedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Plant> featuredPlants = demoPlants.take(5).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sản phẩm nổi bật',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        SizedBox(
          height: 220.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: featuredPlants.map((plant) {
              return Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: PlantItem(
                  plant.name,
                  plant.description,
                  '${plant.price.toStringAsFixed(3)}đ',
                  plant.thumbnail,
                  plant.category.name,
                  plant.attribute,
                  'featured'
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}