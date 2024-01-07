import 'package:ecommerce_app/src/features/orders/domain/order.dart';

final kTestOrders = [
  Order(
    id: 'abc',
    userId: '123',
    items: {
      '1': 1,
      '2': 2,
      '3': 3,
    },
    orderStatus: OrderStatus.confirmed,
    orderDate: DateTime.now(),
    total: 104,
  ),
];
