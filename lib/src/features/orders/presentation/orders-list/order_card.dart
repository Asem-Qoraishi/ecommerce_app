import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/core/utils/currency_formater.dart';
import 'package:ecommerce_app/src/core/utils/date_fromatter.dart';
import 'package:ecommerce_app/src/features/cart/domain/item.dart';
import 'package:ecommerce_app/src/features/orders/domain/order.dart';
import 'package:ecommerce_app/src/features/orders/presentation/orders-list/order_item_list_tile.dart';
import 'package:ecommerce_app/src/features/orders/presentation/orders-list/order_status_lable.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key, required this.order}) : super(key: key);
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(Sizes.p8),
      ),
      child: Column(
        children: [
          OrderHeader(order: order),
          const Divider(),
          OrderItemsList(order: order),
        ],
      ),
    );
  }
}

class OrderHeader extends StatelessWidget {
  const OrderHeader({Key? key, required this.order}) : super(key: key);
  final Order order;
  @override
  Widget build(BuildContext context) {
    // TODO: Inject currency formatter
    final totalPriceFormatted = HCurrencyFormatter.format(order.total);
    // TODO: Inject date formatter
    final dateFormatted = HDateFromater.format(order.orderDate);
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order placed'.toUpperCase(), style: textTheme.bodySmall),
              gapH4,
              Text(dateFormatted, style: textTheme.bodyLarge),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total'.toUpperCase(),
                style: textTheme.bodySmall,
              ),
              gapH4,
              Text(
                totalPriceFormatted,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderItemsList extends StatelessWidget {
  const OrderItemsList({Key? key, required this.order}) : super(key: key);
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: OrderStatusLable(order: order),
        ),
        for (var entry in order.items.entries)
          OrderItemListTile(
            item: Item(productId: entry.key, quantity: entry.value),
          )
      ],
    );
  }
}
