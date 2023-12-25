import 'package:ecommerce_app/src/constants/breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveTwoColumnLayout extends StatelessWidget {
  const ResponsiveTwoColumnLayout({
    Key? key,
    required this.startWidget,
    required this.endWidget,
    this.startFlex = 1,
    this.endFlex = 1,
    required this.spacing,
    this.breakpoint = Breakpoint.tablet,
    this.rowMainAxisAlignment = MainAxisAlignment.start,
    this.rowCrossAxisAlignment = CrossAxisAlignment.start,
    this.columnMainAxisAlignment = MainAxisAlignment.start,
    // startWidget and endWidget get all the horizontal space of column
    this.columnCrossAxisAlignment = CrossAxisAlignment.stretch,
  }) : super(key: key);

  final Widget startWidget;
  final Widget endWidget;
  final int startFlex;
  final int endFlex;
  final double spacing;
  final double breakpoint;
  final MainAxisAlignment rowMainAxisAlignment;
  final CrossAxisAlignment rowCrossAxisAlignment;
  final MainAxisAlignment columnMainAxisAlignment;
  final CrossAxisAlignment columnCrossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= breakpoint) {
          return Row(
            mainAxisAlignment: rowMainAxisAlignment,
            crossAxisAlignment: rowCrossAxisAlignment,
            children: [
              Flexible(flex: startFlex, child: startWidget),
              SizedBox(width: spacing),
              Flexible(flex: endFlex, child: endWidget)
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: columnMainAxisAlignment,
            crossAxisAlignment: columnCrossAxisAlignment,
            children: [startWidget, SizedBox(height: spacing), endWidget],
          );
        }
      },
    );
  }
}
