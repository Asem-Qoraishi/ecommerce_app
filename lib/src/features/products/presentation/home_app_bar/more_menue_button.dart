import 'package:ecommerce_app/src/features/orders/presentation/orders-list/orders_list_screen.dart';
import 'package:flutter/material.dart';

enum PopupMenuOption {
  orders,
  signIn,
  account,
}

class MoreMenueButton extends StatelessWidget {
  const MoreMenueButton({this.user, Key? key}) : super(key: key);
  final String? user;
  // * Keys for testing using find.byKey()
  static const signInKey = Key('menuSignIn');
  static const ordersKey = Key('menuOrders');
  static const accountKey = Key('menuAccount');
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PopupMenuButton<PopupMenuOption>(
      icon: Icon(
        Icons.more_vert,
        color: Theme.of(context).textTheme.bodyMedium!.color,
      ),
      itemBuilder: (context) {
        return user != null
            ? <PopupMenuEntry<PopupMenuOption>>[
                PopupMenuItem(
                  key: ordersKey,
                  value: PopupMenuOption.orders,
                  child: Text(
                    'Orders',
                    style: textTheme.bodySmall,
                  ),
                ),
                PopupMenuItem(
                  key: accountKey,
                  value: PopupMenuOption.account,
                  child: Text(
                    'Account',
                    style: textTheme.bodySmall,
                  ),
                )
              ]
            : <PopupMenuEntry<PopupMenuOption>>[
                PopupMenuItem(
                  key: signInKey,
                  value: PopupMenuOption.signIn,
                  child: Text(
                    'Sign In',
                    style: textTheme.bodySmall,
                  ),
                ),
              ];
      },
      onSelected: (option) {
        switch (option) {
          case PopupMenuOption.signIn:
            ;
          case PopupMenuOption.account:
            ;
          case PopupMenuOption.orders:
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrdersListScreen(),
                ));
        }
      },
    );
  }
}
