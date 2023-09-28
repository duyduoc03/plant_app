import 'package:flutter/cupertino.dart';
import 'package:plant_app/screens/widgets/product_item.dart';

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
        GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ProductItem('assets/images/img.png', 'Cây Sen Đá', '120,000đ'),
              ProductItem('assets/images/image_1.png', 'Cây Cau Tiểu', '180,000đ'),
              ProductItem('assets/images/image_2.png', 'Cây Lưỡi Hổ', '150,000đ'),
              ProductItem('assets/images/image_3.png', 'Cây Monstera', '250,000đ'),
            ],
        ),
      ],
    );
  }
}