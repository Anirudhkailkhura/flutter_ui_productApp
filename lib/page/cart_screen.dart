import 'package:flutter/material.dart';
import 'package:flutter_ui/controllers/cart_controller.dart';
import 'package:get/get.dart';

import '../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("your cart")),
      body: Column(
        children: [
          CartProducts(),
          // CartTotal()
        ],
      ),
    );
  }
}
