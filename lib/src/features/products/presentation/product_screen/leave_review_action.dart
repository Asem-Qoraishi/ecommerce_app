import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/constants/colors.dart';
import 'package:ecommerce_app/src/core/utils/date_fromatter.dart';
import 'package:ecommerce_app/src/core/widgets/custom_text_button.dart';
import 'package:ecommerce_app/src/core/widgets/responsive_two_column_layout.dart';
import 'package:ecommerce_app/src/features/orders/domain/purchase.dart';
import 'package:flutter/material.dart';

class LeaveReviewAction extends StatelessWidget {
  const LeaveReviewAction({Key? key, required this.productId}) : super(key: key);
  final String productId;
  @override
  Widget build(BuildContext context) {
    //TODO: should read from datasource
    final purchase = Purchase(orderId: 'Abc', orderDate: DateTime.now());
    //if the user purchased this product, can leave a review otherwise can't.
    if (purchase != null) {
      final formattedDate = HDateFromater.format(purchase.orderDate);
      return Column(
        children: [
          const Divider(),
          gapH8,
          ResponsiveTwoColumnLayout(
            startFlex: 3,
            endFlex: 2,
            breakpoint: 300,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            spacing: Sizes.p16,
            startWidget: Text(
              'Purchased on $formattedDate',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            endWidget: CustomTextButton(
              text: 'Leave a review',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppDarkColors.buttonColor),
              onPressed: () {
                ///TODO : GO to the leave review screen
              },
            ),
          )
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
