import 'package:ecommerce_app/src/features/cart/presentation/shopping_cart/shopping_cart_screen.dart';
import 'package:flutter/material.dart';

class ShoppingCartIcon extends StatelessWidget {
  const ShoppingCartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO should read from data source
    const cartItemCount = 3;
    return Badge(
      isLabelVisible: cartItemCount > 0,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
      label: const Text('$cartItemCount'),
      child: IconButton(
        icon: const Icon(Icons.shopping_cart),
        onPressed: () {
          //TODO Navigate to ShoppingCartScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ShoppingCartScreen(),
            ),
          );
        },
      ),
    );
  }
}
