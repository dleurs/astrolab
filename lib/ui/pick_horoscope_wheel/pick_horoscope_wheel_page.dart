import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class PickHoroscopeWheel extends StatefulWidget {
  const PickHoroscopeWheel({super.key});

  static const nameRoute = '/pick_horoscope_wheel';

  @override
  State<PickHoroscopeWheel> createState() => _SelectBirthdayState();
}

class _SelectBirthdayState extends State<PickHoroscopeWheel> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: CustomTheme.appOverlayStyle(isBlack: MediaQuery.of(context).platformBrightness != Brightness.light),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: Center(
            child: WidgetText(
              "PickHoroscopeWheel",
              style: context.textTheme.headline2.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
