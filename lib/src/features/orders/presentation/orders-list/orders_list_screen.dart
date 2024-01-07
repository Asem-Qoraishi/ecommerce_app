import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/constants_data/test_orders.dart';
import 'package:ecommerce_app/src/core/widgets/empty_placeholder_widget.dart';
import 'package:ecommerce_app/src/features/orders/domain/order.dart';
import 'package:ecommerce_app/src/features/orders/presentation/orders-list/order_card.dart';
import 'package:flutter/material.dart';

class OrdersListScreen extends StatelessWidget {
  const OrdersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Read from data source
    final orders = kTestOrders;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      body: orders.isEmpty
          ? const EmptyPlaceholderWidget(message: 'No previous orders')
          : CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(Sizes.p8),
                      child: OrderCard(
                        order: orders[index],
                      ),
                    ),
                    childCount: orders.length,
                  ),
                ),
              ],
            ),
    );
  }
}
