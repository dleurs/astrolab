import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  final String content;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool forceAutoSize;

  const WidgetText(
    this.content, {
    Key? key,
    this.style,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.forceAutoSize = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if ((maxLines != null && overflow == null) || forceAutoSize == true) {
      return AutoSizeText(
        content,
        style: style,
        wrapWords: false,
        textDirection: TextDirection.ltr,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
    } else {
      return Text(
        content,
        style: style,
        textDirection: TextDirection.ltr,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
    }
  }
}
