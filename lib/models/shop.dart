import 'package:ecommerce/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //list of products for sale
  final List<Product> _shop = [
    //1st product
    Product(
      name: "Product 1",
      price: 100,
      description: "...",
    ),
    //2nd product
    Product(
      name: "Product 2",
      price: 100,
      description: "...",
    ),
    //3rd product
    Product(
      name: "Product 3",
      price: 100,
      description: "...",
    ),
    //4th product
    Product(
      name: "Product 4",
      price: 100,
      description: "...",
    ),
  ];

  //user's cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //adding the item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //removing the items from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
