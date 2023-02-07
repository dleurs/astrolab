import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_button.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:astrolab/ui/shared/widget_text_field.dart';
import 'package:flutter/material.dart';

class HomeCalculateAstro extends StatelessWidget {
  const HomeCalculateAstro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF1C1F21),
      padding: WidgetGutter.all.l,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetText(
            "Calculer son ascendant",
            style: context.textTheme.headline3.copyWith(color: Colors.white),
          ),
          WidgetSpace.regular,
          WidgetTextField(
            "Ville de naissance",
            onChanged: (value) {},
            hintText: "Ex: Paris",
            padding: EdgeInsets.zero,
          ),
          WidgetSpace.regular,
          WidgetTextField(
            "Date et jour de naissance",
            onChanged: (value) {},
            hintText: "Jour / Mois / Année",
            padding: EdgeInsets.zero,
          ),
          WidgetSpace.regular,
          WidgetTextField(
            "",
            onChanged: (value) {},
            hintText: "Heure : Minute",
            padding: EdgeInsets.zero,
          ),
          WidgetSpace.regular,
          const WidgetButton("Envoyer"),
        ],
      ),
    );
  }
}
