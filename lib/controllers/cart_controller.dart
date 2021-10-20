import 'dart:ffi';

import 'package:get/get.dart';
import 'package:getex/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  int get cartCount => cartItems.length;
  double get totalPrice => cartItems.fold(0.0, (sum, item) => sum + item.price);
  addToCart(Product product) {
    cartItems.add(product);
  }
}
