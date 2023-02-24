import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/horosocope_details/horoscope_details_page.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/horoscope_info_widget.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FullHoroscopteWidget extends StatelessWidget {
  final Horoscope horoscope;
  const FullHoroscopteWidget({super.key, required this.horoscope});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
      Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(HoroscopeDetailsPage.nameRoute); //TODO horoscope specific
          },
          child: HoroscopeInfoWidget(
            horoscope: horoscope,
          ),
        ),
        WidgetSpace.jumbo,
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HoroscopeDetailsPage.nameRoute); //TODO horoscope specific
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
        )
      ])
    ]);
  }
}
