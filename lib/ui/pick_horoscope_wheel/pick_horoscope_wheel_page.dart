import 'package:astrolab/data/horoscope_data_mock.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/horosocope_details/horoscope_details_page.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/horoscope_info_widget.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                        "assets/svg/verseau_icon.svg",
                        color: context.colors.secondary,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Expanded(flex: 1, child: SizedBox()),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(HoroscopeDetailsPage.nameRoute);
                      },
                      child: HoroscopeInfoWidget(
                        horoscope: HoroscopeDataMock.verseau,
                      ),
                    ),
                    WidgetSpace.jumbo,
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(HoroscopeDetailsPage.nameRoute);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colors.secondary,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/svg/verseau_icon.svg",
                          color: Colors.black,
                          width: 60,
                        ),
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox()),
                    const DatePickerWidget(),
                    const Expanded(flex: 1, child: SizedBox()),
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
