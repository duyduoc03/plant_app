import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final String category;
  final String height;
  final String lightRequirement;
  final String wateringFrequency;
  final double rating = 4;

  PlantDetail(
      this.name,
      this.description,
      this.price,
      this.imagePath,
      this.category,
      this.height,
      this.lightRequirement,
      this.wateringFrequency,
      );

  @override
  Widget build(BuildContext context) {
    final yellowStop = rating * 0.2;
    final gradient = LinearGradient(
      colors: [Colors.yellow,Colors.white],
      stops: [yellowStop,1.0-yellowStop],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Plant Detail',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  right: 16.0,
                  child: IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {
                      // Handle favorite button logic
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '\$$price',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Row(
                          children: [
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return gradient.createShader(bounds);
                              },
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              '${rating.toStringAsFixed(1)}',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Description:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.height),
                          SizedBox(height: 4.0),
                          Text(
                            '$height cm',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.wb_sunny),
                          SizedBox(height: 4.0),
                          Text(
                            '$lightRequirement',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.water_drop),
                          SizedBox(height: 4.0),
                          Text(
                            '$wateringFrequency',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý logic nút thêm vào giỏ hàng
                        },
                        icon: Icon(Icons.shopping_cart),
                        label: Text('Add to Cart'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Xử lý logic nút bình luận
                    },
                    child: Text('Comment'),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Xử lý logic nút chia sẻ
                    },
                    child: Text('Share'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}