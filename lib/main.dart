import 'package:flutter/material.dart';
import 'package:plant_app/screens/login/login_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main()  {
  runApp(PlantShop());
  Fluttertoast.showToast(msg: 'App started');
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
      home: LoginScreen(),
    );
  }
}

