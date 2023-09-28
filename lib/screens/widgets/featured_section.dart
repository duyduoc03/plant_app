import 'package:flutter/material.dart';
import 'product_item.dart';

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
        Container(
          height: 200.0,
          child: Row(
            children: [
              Expanded(
                child: ProductItem('assets/images/image_1.png', 'Cây Monstera', '250,000đ'),
              ),
              Expanded(
                child: ProductItem('assets/images/image_2.png', 'Cây Lưỡi Hổ', '150,000đ'),
              ),
              Expanded(
                child: ProductItem('assets/images/image_3.png', 'Cây Cỏ May Mắn', '80,000đ'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}