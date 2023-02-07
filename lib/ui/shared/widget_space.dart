import 'package:astrolab/theme/theme.dart';
import 'package:flutter/material.dart';

class WidgetSpace extends StatelessWidget {
  final double height;
  final double width;

  const WidgetSpace.all(double value)
      : height = value,
        width = value;

  static WidgetSpace small = const WidgetSpace.all(WidgetSize.sm);
  static WidgetSpace medium = const WidgetSpace.all(WidgetSize.md);
  static WidgetSpace regular = const WidgetSpace.all(WidgetSize.regular);
  static WidgetSpace large = const WidgetSpace.all(WidgetSize.l);
  static WidgetSpace xlarge = const WidgetSpace.all(WidgetSize.xl);
  static WidgetSpace xxlarge = const WidgetSpace.all(WidgetSize.xxl);
  static WidgetSpace jumbo = const WidgetSpace.all(WidgetSize.jumbo);
  static WidgetSpace xjumbo = const WidgetSpace.all(WidgetSize.xjumbo);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
