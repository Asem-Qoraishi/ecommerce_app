import 'package:ecommerce_app/src/features/orders/domain/order.dart';
import 'package:flutter/material.dart';

/// Shows the status of the order
class OrderStatusLable extends StatelessWidget {
  const OrderStatusLable({Key? key, required this.order}) : super(key: key);

  final Order order;
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge;
    switch (order.orderStatus) {
      case OrderStatus.confirmed:
        return Text(
          'Confirmed - preparing for delivery',
          style: textStyle,
        );
      case OrderStatus.shipped:
        return Text(
          'Shipped',
          style: textStyle,
        );
      case OrderStatus.delivered:
        return Text(
          'Delivered',
          style: textStyle,
        );
    }
  }
}
