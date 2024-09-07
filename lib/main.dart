import 'package:flutter/material.dart';
import 'package:myapp/pages/intro_page.dart';
import 'package:myapp/themes/light_mode.dart';
import 'package:myapp/pages/shop_page.dart';

void main() {
  runApp(const ShopApp());
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
        });
  }
}
