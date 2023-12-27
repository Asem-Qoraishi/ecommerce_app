import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/breakpoints.dart';
import 'package:ecommerce_app/src/core/widgets/decorated_box_with_shadow.dart';
import 'package:ecommerce_app/src/core/widgets/empty_placeholder_widget.dart';
import 'package:ecommerce_app/src/core/widgets/responsive_center.dart';
import 'package:ecommerce_app/src/features/cart/domain/item.dart';
import 'package:ecommerce_app/src/features/cart/presentation/cart_total/cart_total_with_cta.dart';
import 'package:flutter/material.dart';

class ShoppingCartItemsBuilder extends StatelessWidget {
  const ShoppingCartItemsBuilder({
    Key? key,
    required this.items,
    required this.itemBuilder,
    required this.ctaBuilder,
  }) : super(key: key);

  final List<Item> items;
  final Widget Function(BuildContext context, Item item, int index) itemBuilder;
  final WidgetBuilder ctaBuilder;

  @override
  Widget build(BuildContext context) {
    //if there is no Item in cart shows a place holder;
    if (items.isEmpty) {
      return const EmptyPlaceholderWidget(
        message: 'Your shopping cart is empty.',
      );
    }

    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= Breakpoint.tablet) {
      return ResponsiveCenter(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: ListView.builder(
                padding: const EdgeInsets.all(Sizes.p16),
                itemCount: items.length,
                itemBuilder: (context, index) => itemBuilder(context, items[index], index),
              ),
            ),
            gapW16,
            Flexible(
              flex: 1,
              child: CartTotalWithCTA(
                ctaBuilder: ctaBuilder,
              ),
            ),
          ],
        ),
      );
    } else {
      return Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              padding: const EdgeInsets.all(Sizes.p16),
              itemBuilder: (context, index) => itemBuilder(context, items[index], index),
            ),
          ),
          DecoratedBoxWithShadow(
            child: CartTotalWithCTA(ctaBuilder: ctaBuilder),
          ),
        ],
      );
    }
  }
}
