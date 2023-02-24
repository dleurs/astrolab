import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/full_horoscope_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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
            child: Stack(
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Provider.of<Horoscope>(context).iconPath,
                        color: context.colors.secondary,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Expanded(flex: 3, child: SizedBox()),
                    FullHoroscopteWidget(),
                    Expanded(flex: 2, child: SizedBox()),
                    DatePickerWidget(),
                    Expanded(flex: 2, child: SizedBox()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
