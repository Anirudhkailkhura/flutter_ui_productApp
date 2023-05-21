import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("your cart")),
      body: Column(
        children: [
          CartProducts(),
          CartTotal()
        ],

      ),
    );
  }
}
