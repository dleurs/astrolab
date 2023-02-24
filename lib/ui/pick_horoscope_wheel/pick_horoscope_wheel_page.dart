import 'package:astrolab/data/horoscope_data_mock.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/full_horoscope_widget.dart';
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
            child: Column(
              children: [
                FullHoroscopteWidget(horoscope: HoroscopeDataMock.verseau),
                const Expanded(flex: 3, child: SizedBox()),
                const DatePickerWidget(),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
