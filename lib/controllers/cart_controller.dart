import 'package:flutter/material.dart';
import 'package:flutter_ui/model/model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  // Add a dict to store the products in the cart.
  var _products = {}.obs;

  void addProduct(Model product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar(
      "Product Added",
      "You have added the ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }
}
