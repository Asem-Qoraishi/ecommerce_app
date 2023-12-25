import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:ecommerce_app/src/core/widgets/responsive_center.dart';
import 'package:ecommerce_app/src/features/products/presentation/home_app_bar/home_app_bar.dart';
import 'package:ecommerce_app/src/features/products/presentation/products_list/product_search_text_field.dart';
import 'package:ecommerce_app/src/features/products/presentation/products_list/products_grid.dart';
import 'package:flutter/material.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  _ProductsListScreenState createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  //When the search input gets focus, the keyboard apears on the mobile screen,
  //this method dismiss the keyboard when the user scroll
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: const [
          ResponsiveSliverCenter(
            padding: EdgeInsets.all(Sizes.p16),
            child: ProductSearchTextField(),
          ),
          ResponsiveSliverCenter(
            child: ProductsGrid(),
          )
        ],
      ),
    );
  }
}
