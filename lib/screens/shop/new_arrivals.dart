import 'package:flutter/cupertino.dart';
import 'package:plant_app/screens/shop/components/plant_item.dart';
import 'package:plant_app/model/plant.dart'; // Import the Plant model

class NewArrivalsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sản phẩm mới',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 0,
          ),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demoPlants.length,
          itemBuilder: (BuildContext context, int index) {
            var plant = demoPlants[index];
            return PlantItem(
              plant.name,
              plant.description,
              '${plant.price.toStringAsFixed(3)}đ',
              plant.thumbnail,
              plant.category.name,
              plant.attribute,
                'arrivals'
            );
          },
        ),
      ],
    );
  }
}