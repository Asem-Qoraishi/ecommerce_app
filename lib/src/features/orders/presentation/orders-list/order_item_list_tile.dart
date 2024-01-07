import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/test_products.dart';
import 'package:ecommerce_app/src/core/widgets/custom_image.dart';
import 'package:ecommerce_app/src/features/cart/domain/item.dart';
import 'package:flutter/material.dart';

class OrderItemListTile extends StatelessWidget {
  const OrderItemListTile({Key? key, required this.item}) : super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    //TODO: read from data source
    final product = kTestProducts.firstWhere((product) => product.id == item.productId);
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(Sizes.p8),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: CustomImage(imageUrl: product.imageUrl),
          ),
          gapW8,
          Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: textTheme.bodyLarge,
                  ),
                  gapH12,
                  Text(
                    'Quantity: ${item.quantity}',
                    style: textTheme.bodyMedium,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
