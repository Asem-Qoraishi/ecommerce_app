import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          children: [
            Text(message, style: Theme.of(context).textTheme.titleMedium),
            gapH32,
            const PrimaryButton(text: 'Go Home'),
          ],
        ),
      ),
    );
  }
}
