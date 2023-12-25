import 'dart:math';
import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/core/widgets/alert_dialog.dart';
import 'package:ecommerce_app/src/core/widgets/item_quantity_selector.dart';
import 'package:ecommerce_app/src/core/widgets/primary_button.dart';
import 'package:ecommerce_app/src/features/products/domain/product.dart';
import 'package:flutter/material.dart';

/// A widget that shows an [ItemQuantitySelector] along with a [PrimaryButton]
/// to add the selected quantity of the item to the cart.
class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    const availableQuantity = 5;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Quantity', style: Theme.of(context).textTheme.bodyMedium),
            ItemQuantitySelector(
              //TODO: plug in state
              quantity: 1,
              // let the user choose up to the available quantity or
              // 10 items at most
              maxQuantity: min(availableQuantity, 10),
              onChanged: (value) {
                showNotImplementedAlertDialog(context: context);
              },
            )
          ],
        ),
        gapH8,
        const Divider(),
        gapH8,
        PrimaryButton(
          // TODO: Loading state
          isLoading: false,
          // TODO: Implement onPressed
          onPressed: () {
            showNotImplementedAlertDialog(context: context);
          },
          text: availableQuantity > 0 ? 'Add to Cart' : 'Out of Stock',
        ),
        if (product.availableQuantity > 0 && availableQuantity == 0) ...[
          gapH8,
          Text(
            'Already added to cart',
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
