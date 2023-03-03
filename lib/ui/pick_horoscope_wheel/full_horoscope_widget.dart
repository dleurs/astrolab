import 'package:astrolab/model/current_horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/horosocope_details/horoscope_details_page.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/horoscope_info_widget.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FullHoroscopteWidget extends StatelessWidget {
  const FullHoroscopteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentHoroscope>(builder: (context, value, _) {
      final horoscope = value.value;
      return Column(children: [
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
          child: Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              horoscope.iconPath,
              color: Colors.black,
              width: 60,
              height: 60,
            ),
          ),
        )
      ]);
    });
  }
}
