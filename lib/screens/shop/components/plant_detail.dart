import 'package:flutter/material.dart';
import 'package:plant_app/model/attribute.dart';
import 'package:plant_app/models/categories.dart';

class PlantDetail extends StatefulWidget {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final Categories categories;
  // final String height;
  // final String lightRequirement;
  // final String wateringFrequency;
  final String attribute;
  final double rating = 4;

  PlantDetail(
      this.name,
      this.description,
      this.price,
      this.imagePath,
      this.categories,
      this.attribute
      );

  @override
  _PlantDetailState createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isLargeImageVisible = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final yellowStop = widget.rating * 0.2;
    final gradient = LinearGradient(
      colors: [Colors.yellow, Colors.white],
      stops: [yellowStop, 1.0 - yellowStop],
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
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isLargeImageVisible = !isLargeImageVisible;
                      });
                    },
                    child: Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: isLargeImageVisible ? 1.0 : 0.0,
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
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
                      widget.name,
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '\$${widget.price}',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  size: 22.0,
                                ),
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '${widget.rating.toStringAsFixed(1)}',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.shopping_cart, color: Colors.green.shade900, size: 24.0),
                            SizedBox(width: 4.0),
                            Text(
                              'Đã bán: 50',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
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
                      widget.description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                    Column(
                    children: [
                    Icon(Icons.height, color: Colors.green.shade900),
                    SizedBox(height: 4.0),
                    Text(
                      '10 cm',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
            Column(
            children: [
            Icon(Icons.wb_sunny, color: Colors.green.shade900),
            SizedBox(height: 4.0),
            Text(
              'Indirect sunlight',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        Column(
          children: [
            Icon(Icons.water_drop, color: Colors.green.shade900),
            SizedBox(height: 4.0),
            Text(
              'Water moderately',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        ],
      ),
      SizedBox(height: 16.0),
      Row(
        children: [
          Icon(Icons.local_shipping, color: Colors.black38, size: 18,),
          SizedBox(width: 10.0),
          Text(
            'Miễn phí vận chuyển',
            style: TextStyle(fontSize: 16.0, ),
          ),
        ],
      ),
      SizedBox(height: 4.0),
      Row(
        children: [
          Icon(Icons.timer, color: Colors.black38, size: 18,),
          SizedBox(width: 10.0),
          Text(
            'Bảo hành cây trong 30 ngày',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
      ],
    ),
    ),
    TabBar(
    controller: _tabController,
    tabs: [
    Tab(
    child: Text(
      'Chi tiết sản phẩm',
      style: TextStyle(
        color: Colors.green, // Thay đổi màu chữ thành màu xanh
      ),
    ),
    ),
      Tab(
        child: Text(
          'Hướng dẫn chăm sóc',
          style: TextStyle(
            color: Colors.green, // Thay đổi màu chữ thành màu xanh
          ),
        ),
      ),
    ],
    ),
    SizedBox(
    height: 200.0, // Placeholder for tab content
    child: TabBarView(
    controller: _tabController,
    children: [
    // Comment tab content
    Center(
    child: Text('- 12345678'),
    ),
    // Share tab content
    Center(
    child: Text('Share tab content'),
    ),
    ],
    ),
    ),
      SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () {
            // Handle add to cart button logic
          },
          icon: Icon(Icons.shopping_cart),
          label: Text('Add to Cart'),
        ),
      ),
    ],
    ),
    ),
    );
  }
}