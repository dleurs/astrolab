import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/pick_horoscope_wheel_page.dart';
import 'package:astrolab/ui/welcome/widgets/home_calculate_astro.dart';
import 'package:astrolab/ui/welcome/widgets/home_circle_astro.dart';
import 'package:astrolab/ui/welcome/widgets/home_playlist_example.dart';
import 'package:astrolab/ui/shared/widget_button.dart';
import 'package:astrolab/ui/shared/widget_header.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: CustomTheme.appOverlayStyle(isBlack: MediaQuery.of(context).platformBrightness != Brightness.light),
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const WidgetHeader("ASTRO"),
                WidgetButton(
                  "Entrer",
                  onPressed: () {
                    Navigator.of(context).pushNamed(PickHoroscopeWheel.nameRoute);
                  },
                ),
                Padding(
                  padding: WidgetGutter.horizontal.md,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: WidgetSize.l, vertical: WidgetSize.xl),
                    color: Colors.white,
                    child: WidgetText("Votre horoscope personnalisé", style: context.textTheme.headline2.copyWith(color: Colors.black)),
                  ),
                ),
                const HomeCalculateAstro(),
                Container(
                  padding: WidgetGutter.horizontal.md,
                  color: Colors.white,
                  height: 715,
                  width: double.infinity,
                  child: Column(
                    children: [
                      WidgetSpace.medium,
                      Padding(
                        padding: WidgetGutter.all.l,
                        child: WidgetText(
                          "Faites tourner la roue",
                          style: context.textTheme.headline2.copyWith(color: Colors.black),
                        ),
                      ),
                      WidgetSpace.xlarge,
                      WidgetSpace.xlarge,
                      CustomPaint(
                        painter: HomeCircleAstro(),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0XFF1C1F21),
                  padding: WidgetGutter.horizontal.l,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetText(
                        "Horoscope de la pleine lune",
                        style: context.textTheme.headline3.copyWith(color: Colors.white),
                      ),
                      WidgetSpace.regular,
                      WidgetText(
                        "Cycles, horoscopes lunaires, aspects notables, ou jardinages, c'est par ici !",
                        style: context.textTheme.astroContentMonserrat,
                      ),
                      WidgetSpace.regular,
                      const WidgetButton("Envoyer", buttonType: WidgetButtonType.secondary),
                      WidgetSpace.regular,
                    ],
                  ),
                ),
                const HomePlayListExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
