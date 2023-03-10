import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class HoroscopeDetailsHeader extends StatelessWidget {
  const HoroscopeDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: WidgetSize.regular, vertical: WidgetSize.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Ink(
                  child: WidgetText(
                    "Retour",
                    style: context.textTheme.textNormalStyle.copyWith(
                      color: context.colors.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(),
          ],
        ));
  }
}
