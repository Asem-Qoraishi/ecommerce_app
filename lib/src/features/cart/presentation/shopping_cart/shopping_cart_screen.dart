import 'package:ecommerce_app/src/constants/test_items.dart';
import 'package:ecommerce_app/src/core/widgets/primary_button.dart';
import 'package:ecommerce_app/src/features/cart/presentation/shopping_cart/shopping_cart_item.dart';
import 'package:ecommerce_app/src/features/cart/presentation/shopping_cart/shopping_cart_items_builder.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: ShoppingCartItemsBuilder(
        items: kTestItems,
        itemBuilder: (context, item, index) {
          return ShoppingCartItem(
            item: item,
            itemIndex: index,
          );
        },
        ctaBuilder: (_) => PrimaryButton(
          text: 'Checkout',
          onPressed: () {
            //TODO: go to the checkout screen
          },
        ),
      ),
    );
  }
}
