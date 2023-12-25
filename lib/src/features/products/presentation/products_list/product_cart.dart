import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/core/utils/currency_formater.dart';
import 'package:ecommerce_app/src/features/products/domain/product.dart';
import 'package:ecommerce_app/src/features/products/presentation/product_screen/product_average_rating.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key, required this.product, required this.onPressed}) : super(key: key);
  final Product product;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final formattedPrice = HCurrencyFormatter.format(product.price);
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(product.imageUrl),
              gapH8,
              const Divider(),
              gapH8,
              Text(product.title, style: textTheme.bodyLarge),
              if (product.numRatings >= 1) ...[
                gapH8,
                ProductAverageRating(product: product),
              ],
              gapH24,
              //Price
              Text(formattedPrice, style: textTheme.bodyLarge),
              gapH4,
              Text(
                product.availableQuantity <= 0 ? 'Out of Stock' : 'Quantity: ${product.availableQuantity}',
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
