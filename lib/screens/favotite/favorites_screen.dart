import 'package:flutter/material.dart';
import 'package:plant_app/screens/favotite/components/favorite_item.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<Map<String, dynamic>> favoritePlants = [
    {
      'imagePath': 'assets/images/image_1.png',
      'name': 'Cây A',
      'price': '100.000 VND',
      'isFavorite': false,
    },
    {
      'imagePath': 'assets/images/image_3.png',
      'name': 'Cây B',
      'price': '150.000 VND',
      'isFavorite': false,
    },
    {
      'imagePath': 'assets/images/image_2.png',
      'name': 'Cây C',
      'price': '200.000 VND',
      'isFavorite': false,
    },
    {
      'imagePath': 'assets/images/image_1.png',
      'name': 'Cây D',
      'price': '120.000 VND',
      'isFavorite': false,
    },
    {
      'imagePath': 'assets/images/image_2.png',
      'name': 'Cây E',
      'price': '180.000 VND',
      'isFavorite': false,
    },
    {
      'imagePath': 'assets/images/image_3.png',
      'name': 'Cây F',
      'price': '90.000 VND',
      'isFavorite': false,
    },
  ];

  bool isEditing = false;

  void toggleEditing() {
    setState(() {
      isEditing = !isEditing;
    });
  }

  void toggleFavorite(int index) {
    setState(() {
      favoritePlants[index]['isFavorite'] =
      !favoritePlants[index]['isFavorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yêu thích',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(top: 20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: favoritePlants.length,
        itemBuilder: (context, index) {
          final plant = favoritePlants[index];
          return FavoriteItem(
            imagePath: plant['imagePath'],
            name: plant['name'],
            price: plant['price'],
            isFavorite: plant['isFavorite'],
            isEditing: isEditing,
            onToggleFavorite: () => toggleFavorite(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isEditing ? Icons.check : Icons.edit),
        onPressed: toggleEditing,
      ),
    );
  }
}