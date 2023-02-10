import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_button.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  static const nameRoute = '/welcome';

  @override
  State<Welcome> createState() => _SelectBirthdayState();
}

class _SelectBirthdayState extends State<Welcome> {
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
          Image.asset(
            fit: BoxFit.cover,
            'assets/images/welcome/1.png',
            width: width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
              WidgetSpace.xjumbo,
              WidgetSpace.xjumbo,
              Padding(
                padding: EdgeInsets.only(
                    top: WidgetSize.regular, left: ((width - 111) / 2), right: ((width - 111) / 2), bottom: WidgetSize.regular + screenPaddingBottom),
                child: WidgetButton(
                  "Entrer",
                  onPressed: () {
                    Navigator.of(context).pushNamed(Welcome.nameRoute);
                  },
                  backgroundColor: context.colors.primary,
                  textColor: context.colors.onPrimary,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
