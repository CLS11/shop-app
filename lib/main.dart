import 'package:ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/pages/intro_page.dart';
import 'package:ecommerce/themes/light_mode.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(),
    child: const ShopApp(),
    ),
  );
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: lightMode,
        routes: {
          '/intro_page': (context) => const IntroPage(),
          '/shop_page': (context) => const ShopPage(),
          '/cart_page': (context) => const CartPage(),
        });
  }
}
