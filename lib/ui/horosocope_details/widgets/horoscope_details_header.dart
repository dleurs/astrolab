import 'package:astrolab/theme/theme.dart';
import 'package:flutter/material.dart';

class HoroscopeDetailsHeader extends StatelessWidget {
  const HoroscopeDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: WidgetSize.sm, vertical: WidgetSize.sm),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 40,
                )),
          ],
        ));
  }
}
