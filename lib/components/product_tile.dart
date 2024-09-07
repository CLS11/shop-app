import 'package:flutter/material.dart';
import 'package:ecommerce/models/products.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //product image
          Icon(Icons.favorite),
          //product name
          Text
          //product description

          //product price + add to cart button


        ],
      ),
    );
  }
}
