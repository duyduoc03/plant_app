import 'package:flutter/material.dart';
import 'package:plant_app/screens/shop/components/plant_item.dart';
import 'package:plant_app/services/api_service.dart';

import '../../models/categories.dart';
import '../../models/products.dart';

class FeaturedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sản phẩm nổi bật',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        FutureBuilder<List<Products>>(
          future: ApiService.fetchProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Products> productList = snapshot.data!;
              return SizedBox(
                height: 220.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: productList.map((product) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: PlantItem(
                        product.name,
                        product.description,
                        '${product.price.toStringAsFixed(3)}đ',
                        product.thumbnail,
                        product.category, // Provide a default Categories instance if null
                        product.attribute?.name ?? '',
                        'featured',
                      ),
                    );
                  }).toList(),
                ),
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