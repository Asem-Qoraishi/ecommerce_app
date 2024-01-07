import 'package:ecommerce_app/src/constants/breakpoints.dart';
import 'package:ecommerce_app/src/core/widgets/action_text_button.dart';
import 'package:ecommerce_app/src/features/orders/presentation/orders-list/orders_list_screen.dart';
import 'package:ecommerce_app/src/features/products/presentation/home_app_bar/more_menue_button.dart';
import 'package:ecommerce_app/src/features/products/presentation/home_app_bar/shopping_cart_icon.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  final String user = 'Asem';
  @override
  Widget build(BuildContext context) {
    //TODO get the user from repository

    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < Breakpoint.tablet) {
      return AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actionsIconTheme: Theme.of(context).appBarTheme.actionsIconTheme,
        title: const Text('Online Shop'),
        actions: [
          const ShoppingCartIcon(),
          MoreMenueButton(user: user),
        ],
      );
    } else {
      return AppBar(
        title: const Text('Online Shop'),
        actions: [
          const ShoppingCartIcon(),
          if (user != null) ...[
            ActionTextButton(
              key: MoreMenueButton.ordersKey,
              text: 'Orders',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrdersListScreen(),
                    ));
              },
            ),
            ActionTextButton(
              key: MoreMenueButton.accountKey,
              text: 'Account',
              onPressed: () {},
            )
          ] else ...[
            ActionTextButton(
              key: MoreMenueButton.signInKey,
              text: 'Sign In',
              onPressed: () {},
            )
          ]
        ],
      );
    }
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
