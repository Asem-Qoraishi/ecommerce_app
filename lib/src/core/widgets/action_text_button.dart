import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ActionTextButton extends StatelessWidget {
  const ActionTextButton({Key? key, required this.text, this.onPressed}) : super(key: key);
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
