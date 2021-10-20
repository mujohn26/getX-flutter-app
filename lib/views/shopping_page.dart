import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/controllers/cart_controller.dart';
import 'package:getex/controllers/shopping_controller.dart';

// ignore: use_key_in_widget_constructors
class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingContoller());
  final cartController = Get.put(CartController());

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: GetX<ShoppingContoller>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                          margin: const EdgeInsets.all(12),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            controller.products[index].productName),
                                        Text(
                                            controller.products[index].productDescription),
                                      ],
                                    ),
                                    Text(
                                        '\$${controller.products[index].price}')
                                  ],
                                ),
                                RaisedButton(
                                  onPressed: () {
                                    cartController
                                        .addToCart(controller.products[index]);
                                  },
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: const Text('Add to cart'),
                                )
                              ],
                            ),
                          ));
                    });
              })),
              GetX<CartController>(builder: (controller) {
                return Text(
                  'Total amount: \$${controller.totalPrice}',
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                );
              }),
              const SizedBox(height: 60)
            ],
          ),
        ),
        floatingActionButton: GetX<CartController>(builder: (controller) {
          return FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              backgroundColor: Colors.amber,
              label: Text(
                '${controller.cartCount}',
                style: const TextStyle(color: Colors.black),
              ));
        }));
  }
}
