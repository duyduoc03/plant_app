import 'package:flutter/material.dart';
import 'package:plant_app/screens/login/login_screen.dart';
import 'package:plant_app/screens/register/register_screen.dart';
import 'screens/home_page.dart';


void main()  {
  runApp(PlantShop());
}

class PlantShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Shop',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}

