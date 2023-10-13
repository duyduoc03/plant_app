import 'package:flutter/material.dart';

class FavoriteItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  final bool isFavorite;
  final bool isEditing;
  final VoidCallback onToggleFavorite;

  const FavoriteItem({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.isFavorite,
    required this.isEditing,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 140.0,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.0),
              Text(
                price,
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
            ],
          ),
          if (isEditing)
            Positioned(
              top: 8.0,
              right: 8.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.5),
                ),
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: onToggleFavorite,
                ),
              ),
            ),
        ],
      ),
    );
  }
}