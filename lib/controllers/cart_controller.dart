import 'package:flutter_ui/model/model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  // Add a dict to store the products in the cart.
  RxMap products = {}.obs;

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }

  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  void addProduct(Model product) {
    if (products.containsKey(product)) {
      products[product] += 1;
    } else {
      products[product] = 1;
    }

    print(products.toString());
    update();

    Get.snackbar(
      "Product Added",
      "You have added the ${product.name} to the cart",
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }

  void removeProduct(Model product) {
    if (products.containsKey(product) && products[product] == 1) {
      products.removeWhere((key, value) => key == product);
    } else {
      products[product] -= 1;
    }
  }

  //  get productSubtotal => _products.entries
  //     .map((product) => product.key.price * product.value)
  //     .toList();

  // get total => _products.entries
  //     .map((product) => product.key.price * product.value)
  //     .toList()
  //     .reduce((value, element) => value + element)
  //     .toStringAsFixed(2);
}
