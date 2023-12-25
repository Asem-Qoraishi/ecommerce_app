import 'package:flutter/material.dart';

class ProductSearchTextField extends StatefulWidget {
  const ProductSearchTextField({Key? key}) : super(key: key);

  @override
  _ProductSearchTextFieldState createState() => _ProductSearchTextFieldState();
}

class _ProductSearchTextFieldState extends State<ProductSearchTextField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.bodyMedium;
    final inputTheme = Theme.of(context).inputDecorationTheme;
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, _) {
        return TextField(
          controller: _controller,
          autofocus: false,
          style: textTheme,
          decoration: InputDecoration(
            label: const Text('Search products'),
            labelStyle: inputTheme.labelStyle,
            floatingLabelStyle: inputTheme.floatingLabelStyle,
            errorStyle: inputTheme.errorStyle,
            suffixIcon: value.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      _controller.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )
                : null,
            prefixIcon: const Icon(Icons.search),
          ),
        );
      },
    );
  }
}
