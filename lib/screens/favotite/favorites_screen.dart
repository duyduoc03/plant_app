import 'package:flutter/material.dart';
import '../../model/wishlist.dart';
import 'components/favorite_item.dart'; // Import your Plant model

class FavoritesScreen extends StatelessWidget {
  final List<Wishlist> favoriteWishlists; // Update the data type to your Wishlist model

  FavoritesScreen({required this.favoriteWishlists});

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
        itemCount: favoriteWishlists.length,
        itemBuilder: (context, index) {
          final wishlist = favoriteWishlists[index];
          final plant = wishlist.plant;
          return FavoriteItem(
            imagePath: plant.imageUrl,
            name: plant.name,
            price: plant.price.toString(),
            isFavorite: true, isEditing: false, onToggleFavorite: () {  },
          );
        },
      ),
    );
  }
}