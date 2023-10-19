import 'package:flutter/material.dart';
import 'package:plant_app/model/order.dart';
import 'package:plant_app/model/user.dart';

class CheckoutDetail extends StatelessWidget {
  final List<Order> cartItems;
  final User user;

  const CheckoutDetail({Key? key, required this.cartItems, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (var cartItem in cartItems) {
      total += cartItem.plant.price * cartItem.quantity;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Name: ${user.fullName}'),
            Text('Phone: ${user.phone}'),
            Text('Address: ${user.address}'),
            SizedBox(height: 20),
            Text(
              'Order Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final order = cartItems[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CartCard(
                      order: order,
                      width: MediaQuery.of(context).size.width,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Total: \$${total.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement the checkout logic
                    },
                    child: Text('Checkout'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CartCard extends StatefulWidget {
  final Order order;
  final double width;

  const CartCard({
    Key? key,
    required this.order,
    required this.width,
  }) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int quantity = 1;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Image.asset(
          widget.order.plant.thumbnail,
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.order.plant.name,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    '\$${widget.order.plant.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove, size: 15,),
                    onPressed: () {
                      setState(() {
                        if (quantity > 1) {
                          quantity--;
                        }
                      });
                    },
                  ),
                  Text(
                    quantity.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    icon: Icon(Icons.add, size: 15,),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}