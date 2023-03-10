import 'dart:math';

import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/horosocope_details/widgets/horoscope_details_header.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        backgroundColor: context.colors.background,
        body: SafeArea(
          child: Column(
            children: [
              const HoroscopeDetailsHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: WidgetSize.regular),
                child: Column(
                  children: [
                    WidgetSpace.medium,
                    WidgetText(
                      horoscope.name,
                      style: context.textTheme.textHeaderStyle.copyWith(
                        color: context.colors.primary,
                        fontSize: 45,
                        height: 65 / 40,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    WidgetSpace.large,
                    WidgetText(
                      "Conseil du jour",
                      style: context.textTheme.textNormalStyle.copyWith(
                        color: context.colors.primary,
                        fontSize: 18,
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
                    WidgetSpace.large,
                    InkWell(
                      onTap: () {
                        animationController.forward().whenComplete(() => setState(() {
                              animationController.reset();
                              step = !step;
                            }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Ink(
                          child: WidgetText(
                            "Retournez votre carte...",
                            style: context.textTheme.textNormalStyle.copyWith(
                              color: context.colors.onSurface,
                              fontSize: 16,
                              height: 19 / 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    WidgetSpace.regular,
                  ],
                ),
              ),
              Expanded(
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
                                step
                                    ? Expanded(
                                        child: SvgPicture.asset(
                                          horoscope.iconPath,
                                          color: context.colors.secondary,
                                        ),
                                      )
                                    : WidgetText(
                                        textAlign: TextAlign.center,
                                        "Good Idea Believe in yourself and talk to that person.",
                                        style: context.textTheme.textNormalStyle.copyWith(
                                          color: context.colors.primary,
                                          fontSize: 18,
                                          height: 27 / 18,
                                        ),
                                      ),
                              ]),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -MediaQuery.of(context).size.width / 15,
                          child: Image.asset(
                            fit: BoxFit.cover,
                            'assets/images/horoscope/paper.png',
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ],
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
