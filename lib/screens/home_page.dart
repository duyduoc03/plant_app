import 'package:flutter/material.dart';
import 'package:plant_app/screens/favotite/favorites_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/profile/account_screen.dart';

import '../model/wishlist.dart';
import 'order/order_screen.dart';

class HomePage extends StatefulWidget {
  final String avatar;

  const HomePage({super.key, required this.avatar});
  @override
  _HomePageState createState() => _HomePageState(avatar);
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final String avatar;

  _HomePageState(this.avatar);

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildPageContent(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Yêu thích',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tài khoản',
          ),
        ],
      ),
    );
  }

  Widget _buildPageContent(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return FavoritesScreen();
      case 2:
        return OrderScreen();
      case 3:
        return AccountScreen(avatar: avatar,);
      default:
        return Container();
    }
  }
}