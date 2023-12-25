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
    return PopupMenuButton<PopupMenuOption>(
      icon: Icon(
        Icons.more_vert,
        color: Theme.of(context).textTheme.bodyMedium!.color,
      ),
      itemBuilder: (context) {
        return user != null
            ? <PopupMenuEntry<PopupMenuOption>>[
                const PopupMenuItem(
                  key: ordersKey,
                  value: PopupMenuOption.orders,
                  child: Text('Orders'),
                ),
                const PopupMenuItem(
                  key: accountKey,
                  value: PopupMenuOption.account,
                  child: Text('Account'),
                )
              ]
            : <PopupMenuEntry<PopupMenuOption>>[
                const PopupMenuItem(
                  key: signInKey,
                  value: PopupMenuOption.signIn,
                  child: Text('Sign In'),
                ),
              ];
      },
    );
  }
}
