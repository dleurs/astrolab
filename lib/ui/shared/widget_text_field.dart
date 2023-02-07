import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetTextField extends StatelessWidget {
  final String? initialValue;
  final Function(String) onChanged;
  final bool obscureText;
  final int maxLines;
  final double borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final String suffixLabel;
  final Color? borderColor;
  final TextStyle? suffixStyle;
  final VoidCallback? onSuffixTapped;
  final TextStyle? contentStyle;
  final String? errorText;
  final TextStyle? errorTextStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool autofocus;
  final EdgeInsets? padding;
  final TextInputType keyBoardType;
  final Function()? onTap;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? format;

  const WidgetTextField(this.label,
      {Key? key,
      this.initialValue,
      this.obscureText = false,
      required this.onChanged,
      this.maxLines = 1,
      this.borderRadius = 4,
      this.suffixLabel = "Afficher",
      this.onSuffixTapped,
      this.borderColor,
      this.suffixStyle,
      this.labelStyle,
      this.contentStyle,
      this.errorText,
      this.errorTextStyle,
      this.hintText,
      this.hintTextStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.format,
      this.padding,
      this.autofocus = false,
      this.keyBoardType = TextInputType.text,
      this.focusNode,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? WidgetGutter.horizontal.regular,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          label.isEmpty ? Container() : Column(children: [WidgetText(label, style: labelStyle ?? context.textTheme.caption), WidgetSpace.medium]),
          TextFormField(
            initialValue: initialValue,
            obscureText: obscureText,
            maxLines: 1,
            autofocus: autofocus,
            focusNode: focusNode,
            inputFormatters: format,
            style: contentStyle ?? context.textTheme.caption,
            keyboardType: keyBoardType,
            onChanged: onChanged,
            onTap: onTap,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              errorText: errorText,
              errorStyle: errorTextStyle,
              errorMaxLines: 1,
              hintText: hintText,
              hintStyle: hintTextStyle ?? context.textTheme.caption,
              suffix: onSuffixTapped != null
                  ? GestureDetector(
                      onTap: onSuffixTapped,
                      child: WidgetText(
                        suffixLabel,
                        style: suffixStyle ?? context.textTheme.caption,
                      ),
                    )
                  : null,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.white,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    borderRadius,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.white,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    borderRadius,
                  ),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? const CupertinoThemeData().primaryColor,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    borderRadius,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
