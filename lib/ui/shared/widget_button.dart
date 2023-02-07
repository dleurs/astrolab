import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

enum WidgetButtonType {
  primary(Color(0XFFF2E7C8)),
  secondary(Color(0XFFFFFFFF));

  final Color backgroundColor;

  const WidgetButtonType(this.backgroundColor);
}

class WidgetButton extends StatelessWidget {
  final String content;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  final WidgetButtonType buttonType;

  const WidgetButton(
    this.content, {
    Key? key,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
    this.padding,
    this.buttonType = WidgetButtonType.primary,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = List.empty(growable: true);
    if (leftIcon != null) {
      children.add(leftIcon!);
      children.add(WidgetSpace.small);
    }
    children.add(WidgetText(content,
        style: textColor != null ? _textStyle(buttonType, context)?.copyWith(color: textColor) : _textStyle(buttonType, context)));
    if (rightIcon != null) {
      children.add(WidgetSpace.small);
      children.add(rightIcon!);
    }

    return Material(
      color: Colors.transparent,
      borderRadius: WidgetRadius.all.l,
      child: InkWell(
        onTap: onPressed,
        borderRadius: WidgetRadius.all.l,
        child: Ink(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor ?? buttonType.backgroundColor,
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
          ),
          padding: padding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }

  TextStyle? _textStyle(WidgetButtonType type, BuildContext context) {
    switch (type) {
      case WidgetButtonType.primary:
      case WidgetButtonType.secondary:
        return context.textTheme.button;
    }
  }
}
