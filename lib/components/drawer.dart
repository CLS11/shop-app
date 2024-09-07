import 'package:flutter/material.dart';
import 'package:ecommerce/components/button.dart';
import 'package:ecommerce/components/list_tile.dart';
import 'package:ecommerce/pages/intro_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(  
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Drawer header: logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shop,  
                    size: 75,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              // Shop tile
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              // Cart tile
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  // Pop the drawer first
                  Navigator.pop(context);

                  // Go to the cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
              // Exit tile
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: MyListTile(
                  text: "Exit",
                  icon: Icons.logout,
                  onTap: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroPage()),
                    (route) => false,  
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
