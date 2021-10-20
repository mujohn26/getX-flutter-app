import 'package:get/get.dart';
import 'package:getex/models/product.dart';

class ShoppingContoller extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    var productResults = [
      Product(
          id: 1,
          productName: "Product 1",
          price: 10.0,
          productImage: "https://picsum.photos/id/1/200/300",
          productDescription: "Product description"),
      Product(
          id: 2,
          productName: "Product 2",
          price: 20.0,
          productImage: "https://picsum.photos/id/2/200/300",
          productDescription: "Product description"),
      Product(
          id: 3,
          productName: "Product 3",
          price: 30.0,
          productImage: "https://picsum.photos/id/3/200/300",
          productDescription: "Product description"),
      Product(
          id: 4,
          productName: "Product 4",
          price: 40.0,
          productImage: "https://picsum.photos/id/4/200/300",
          productDescription: "Product description"),
      Product(
          id: 5,
          productName: "Product 5",
          price: 50.0,
          productImage: "https://picsum.photos/id/5/200/300",
          productDescription: "Product description"),
      Product(
          id: 6,
          productName: "Product 6",
          price: 60.0,
          productImage: "https://picsum.photos/id/6/200/300",
          productDescription: "Product description"),
      Product(
          id: 4,
          productName: "Product 4",
          price: 40.0,
          productImage: "https://picsum.photos/id/4/200/300",
          productDescription: "Product description"),
      Product(
          id: 5,
          productName: "Product 5",
          price: 50.0,
          productImage: "https://picsum.photos/id/5/200/300",
          productDescription: "Product description"),
      Product(
          id: 6,
          productName: "Product 6",
          price: 60.0,
          productImage: "https://picsum.photos/id/6/200/300",
          productDescription: "Product description"),
    ];
    products.value = productResults;
  }
}
