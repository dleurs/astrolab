import 'dart:math';

import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class HoroscopeDetailsPage extends StatefulWidget {
  const HoroscopeDetailsPage({super.key});

  static const nameRoute = '/horoscope_details';

  @override
  State<HoroscopeDetailsPage> createState() => _SelectBirthdayState();
}

class _SelectBirthdayState extends State<HoroscopeDetailsPage> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool step = true;
  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final horoscope = ModalRoute.of(context)!.settings.arguments as Horoscope;
    return AnnotatedRegion(
      value: CustomTheme.appOverlayStyle(isBlack: MediaQuery.of(context).platformBrightness != Brightness.light),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.colors.background,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.chevron_left,
                size: 40,
                color: context.colors.primary,
              )),
          title: WidgetText(
            horoscope.name,
            style: context.textTheme.textHeaderStyle.copyWith(
              color: context.colors.primary,
              fontSize: 35,
              height: 65 / 40,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: WidgetSize.regular),
                  child: Column(
                    children: [
                      WidgetSpace.large,
                      WidgetText(
                        "Bio :",
                        style: context.textTheme.textNormalStyle.copyWith(
                          color: context.colors.primary,
                          fontSize: 24,
                          height: 27 / 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      WidgetSpace.medium,
                      WidgetText(
                        textAlign: TextAlign.center,
                        "“${horoscope.bio}”",
                        style: context.textTheme.textNormalStyle.copyWith(
                          color: context.colors.primary,
                          fontSize: 18,
                          height: 27 / 18,
                        ),
                      ),
                      WidgetSpace.xlarge,
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    animationController.forward().whenComplete(() => setState(() {
                          animationController.reset();
                          step = !step;
                        }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: WidgetSize.regular, left: WidgetSize.l, right: WidgetSize.l),
                    child: AnimatedBuilder(
                        animation: animationController,
                        builder: (context, child) {
                          return Transform(
                            alignment: FractionalOffset.center,
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.001)
                              ..rotateY(animationController.value * 2 * pi),
                            child: child,
                          );
                        },
                        child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(WidgetSize.sm),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(WidgetSize.radiusMd),
                                  topLeft: Radius.circular(WidgetSize.radiusMd),
                                ),
                                border: Border.all(
                                  width: 3,
                                  color: const Color(0xFFC1BA9E),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(WidgetSize.regular),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(WidgetSize.radiusMd),
                                    topLeft: Radius.circular(WidgetSize.radiusMd),
                                  ),
                                  border: Border.all(
                                    width: 3,
                                    color: const Color(0xFFC1BA9E),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 80.0),
                                      child: step
                                          ? Stack(
                                              children: [
                                                /* SvgPicture.asset(
                                                  horoscope.iconPath,
                                                  color: context.colors.secondary,
                                                ) */
                                                WidgetText(
                                                  textAlign: TextAlign.justify,
                                                  horoscope.horoscopeOfTheDay,
                                                  style: context.textTheme.textNormalStyle.copyWith(
                                                    color: context.colors.background,
                                                    fontSize: 18,
                                                    height: 27 / 18,
                                                  ),
                                                ),
                                                Center(
                                                  child: WidgetText(
                                                    "En Amour\npour Aujourd'hui",
                                                    textAlign: TextAlign.center,
                                                    style: context.textTheme.textNormalStyle.copyWith(
                                                      color: context.colors.primary,
                                                      fontSize: 22,
                                                      height: 27 / 18,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          : WidgetText(
                                              textAlign: TextAlign.justify,
                                              horoscope.horoscopeOfTheDay,
                                              style: context.textTheme.textNormalStyle.copyWith(
                                                color: context.colors.primary,
                                                fontSize: 18,
                                                height: 27 / 18,
                                              ),
                                            ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.width / 15,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/horoscope/paper.png',
                                width: MediaQuery.of(context).size.width * 0.5,
                              ),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
