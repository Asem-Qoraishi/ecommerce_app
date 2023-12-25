import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/test_products.dart';
import 'package:ecommerce_app/src/core/utils/currency_formater.dart';
import 'package:ecommerce_app/src/core/widgets/custom_image.dart';
import 'package:ecommerce_app/src/core/widgets/empty_placeholder_widget.dart';
import 'package:ecommerce_app/src/core/widgets/responsive_center.dart';
import 'package:ecommerce_app/src/core/widgets/responsive_two_column_layout.dart';
import 'package:ecommerce_app/src/features/cart/presentation/add_to_card/add_to_cart_widget.dart';
import 'package:ecommerce_app/src/features/products/domain/product.dart';
import 'package:ecommerce_app/src/features/products/presentation/home_app_bar/home_app_bar.dart';
import 'package:ecommerce_app/src/features/products/presentation/product_screen/leave_review_action.dart';
import 'package:ecommerce_app/src/features/products/presentation/product_screen/product_average_rating.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.productId}) : super(key: key);
  final String productId;
  @override
  Widget build(BuildContext context) {
    //TODO : should read from data source
    final product = kTestProducts.firstWhere(
      (product) => product.id == productId,
    );
    return Scaffold(
      appBar: const HomeAppBar(),
      body: product == null
          ? const EmptyPlaceholderWidget(message: 'The product not found')
          : CustomScrollView(
              slivers: [
                ResponsiveSliverCenter(
                    child: ProductDetails(
                  product: product,
                )),
              ],
            ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    final formattedPrice = HCurrencyFormatter.format(product.price);
    return ResponsiveTwoColumnLayout(
        startWidget: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: CustomImage(
            imageUrl: product.imageUrl,
          ),
        ),
        endWidget: Card(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(product.title, style: Theme.of(context).textTheme.bodyLarge),
                gapH8,
                Text(product.description),
                // Only show average if there is at least one rating
                if (product.numRatings >= 1) ...[
                  gapH8,
                  ProductAverageRating(product: product),
                ],
                gapH8,
                const Divider(),
                gapH8,
                Text(formattedPrice, style: Theme.of(context).textTheme.bodyLarge),
                gapH8,
                LeaveReviewAction(productId: product.id),
                const Divider(),
                gapH8,
                AddToCartWidget(product: product),
              ],
            ),
          ),
        ),
        spacing: Sizes.p16);
  }
}
