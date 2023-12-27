import 'package:ecommerce_app/src/core/utils/currency_formater.dart';
import 'package:flutter/material.dart';

class CartTotalText extends StatelessWidget {
  const CartTotalText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Read from data source;
    const cartTotal = 120.0;
    final totalFormatted = HCurrencyFormatter.format(cartTotal);
    return Text(
      'Total: $totalFormatted',
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
