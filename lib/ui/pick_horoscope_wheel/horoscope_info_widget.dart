import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class HoroscopeInfoWidget extends StatelessWidget {
  final Horoscope horoscope;
  const HoroscopeInfoWidget({super.key, required this.horoscope});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: SizedBox(
        height: 340,
        width: MediaQuery.of(context).size.width,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WidgetText(
              horoscope.name,
              style: context.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            WidgetSpace.small,
            WidgetText(
              "${HoroscopeUtils.dayMonthFormat(horoscope.beginDate1)} - ${HoroscopeUtils.dayMonthFormat(horoscope.endDate2 ?? horoscope.endDate1)}",
              style: context.textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            WidgetSpace.large,
            //const Expanded(child: SizedBox()),
            WidgetText(
              "***",
              style: context.textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            //const Expanded(child: SizedBox()),
            WidgetSpace.medium,
            WidgetText(
              "Élément: ${horoscope.element.value}",
              style: context.textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            WidgetSpace.small,
            WidgetText(
              "Planète: ${horoscope.planet.value}",
              style: context.textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            WidgetSpace.small,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: context.textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(text: HoroscopeUtils.powersTitle(horoscope.powers)),
                  TextSpan(
                      text: HoroscopeUtils.powersElements(horoscope.powers),
                      style: context.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            WidgetSpace.small,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: context.textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(text: HoroscopeUtils.weaknessTitle(horoscope.weaknesses)),
                  TextSpan(
                      text: HoroscopeUtils.weaknessElements(horoscope.weaknesses),
                      style: context.textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
