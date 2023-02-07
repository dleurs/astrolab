import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class WidgetHeader extends StatelessWidget {
  final String content;
  const WidgetHeader(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: WidgetGutter.all.md,
      child: Container(
        width: double.infinity,
        color: context.colors.onBackground,
        padding: WidgetGutter.all.regular,
        child: Center(
          child: WidgetText(
            content,
            style: context.textTheme.headline1.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
