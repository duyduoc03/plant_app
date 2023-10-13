import 'package:flutter/material.dart';
import 'package:plant_app/model/order.dart';
import 'cart_card.dart';
import '../../../core/constant/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          return ListView.builder(
            itemCount: demoCart.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: Key(demoCart[index].plant.id.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  demoCart.removeAt(index);
                },
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.card_giftcard,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                child: CartCard(order: demoCart[index], width: width),
              ),
            ),
          );
        },
      ),
    );
  }
}