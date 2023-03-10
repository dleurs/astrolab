import 'dart:async';

import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/pick_horoscope_wheel_page.dart';
import 'package:astrolab/ui/shared/widget_button.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:astrolab/ui/welcome/widgets/moon.dart';
import 'package:astrolab/ui/welcome/widgets/sun.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  static const nameRoute = '/welcome';

  @override
  State<Welcome> createState() => _SelectBirthdayState();
}

class _SelectBirthdayState extends State<Welcome> {
  bool step = true;
  Timer? _timer;
  @override
  void initState() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        setState(() {
          step = !step;
        });
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final meadiaQuery = MediaQuery.of(context);
    final size = meadiaQuery.size;
    double width = size.width;
    double height = size.height;
    double screenPaddingBottom = meadiaQuery.padding.bottom;

    return AnnotatedRegion(
      value: CustomTheme.appOverlayStyle(isBlack: MediaQuery.of(context).platformBrightness != Brightness.light),
      child: Scaffold(
        backgroundColor: context.colors.onBackground,
        body: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Container(
            height: height - screenPaddingBottom,
          ),
          const Positioned(
            right: 0,
            top: 0,
            child: Sun(),
          ),
          step
              ? Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/welcome/woman0.png',
                  width: width,
                )
              : AnimatedOpacity(
                  opacity: 1.0,
                  duration: const Duration(seconds: 1),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/welcome/woman2.png',
                    width: width,
                  ),
                ),
          Positioned(
            child: Container(
              height: (height - screenPaddingBottom) / 1.5,
              width: width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular((width - 20) / 2), topLeft: Radius.circular((width - 20) / 2)),
                color: Colors.white,
                border: Border.all(
                  width: 3,
                  color: const Color(0xFFC1BA9E),
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: (width - 20) / 2,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            WidgetText(
                              "Astrolab",
                              style: context.textTheme.textHeaderStyle.copyWith(color: context.colors.primary),
                            ),
                            WidgetSpace.medium,
                            WidgetText(
                              "Laissez-vous guider",
                              style: context.textTheme.textNormalStyle.copyWith(color: context.colors.primary),
                            ),
                          ],
                        ),
                        AnimatedOpacity(
                          opacity: 1.0,
                          duration: const Duration(milliseconds: 500),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: WidgetSize.regular,
                                bottom: WidgetSize.regular + screenPaddingBottom,
                                left: (width / 2 - 80),
                                right: (width / 2 - 80)),
                            child: WidgetButton(
                              "Entrer",
                              onPressed: () {
                                Navigator.of(context).pushNamed(PickHoroscopeWheel.nameRoute);
                              },
                              backgroundColor: context.colors.primary,
                              textColor: context.colors.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: (height - screenPaddingBottom) * 0.27,
            left: 20,
            child: const Moon(),
          ),
        ]),
      ),
    );
  }
}
