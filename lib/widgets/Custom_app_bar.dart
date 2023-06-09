import 'package:flutter/material.dart';
import 'package:flutter_ui/page/cart_screen.dart';
import 'package:get/get.dart';

import '../core/color.dart';
import 'cart_product.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      margin: EdgeInsets.only(top: 50.0),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu),
          InkWell(
            onTap: () {},
            splashColor: white,
            child: Container(
              height: 65.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              //cart button
              child: ElevatedButton(
                onPressed: () => Get.to(() => CartScreen()),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
