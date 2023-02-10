import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class HoroscopeDetailsPage extends StatefulWidget {
  const HoroscopeDetailsPage({super.key});

  static const nameRoute = '/horoscope_details';

  @override
  State<HoroscopeDetailsPage> createState() => _SelectBirthdayState();
}

class _SelectBirthdayState extends State<HoroscopeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: CustomTheme.appOverlayStyle(isBlack: MediaQuery.of(context).platformBrightness != Brightness.light),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: Center(
            child: WidgetText(
              "HoroscopeDetailsPage",
              style: context.textTheme.headline2.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
