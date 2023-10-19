import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/shop/components/plant_item.dart';
import 'package:plant_app/model/plant.dart';

import '../../models/products.dart';
import '../../services/api_service.dart'; // Import the Plant model

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
        FutureBuilder<List<Products>>(
          future: ApiService.fetchProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Products> productList = snapshot.data!;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 0,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                  var product = productList[index];
                  return PlantItem(
                    product.name,
                    product.description,
                    '${product.price.toStringAsFixed(3)}đ',
                    product.thumbnail,
                    product.category,
                    product.attribute?.name ?? '',
                    'arrivals',
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ],
    );
  }
}