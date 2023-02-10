import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/shared/widget_button.dart';
import 'package:astrolab/ui/shared/widget_space.dart';
import 'package:astrolab/ui/shared/widget_text.dart';
import 'package:flutter/material.dart';

class HomePlayListExample extends StatelessWidget {
  const HomePlayListExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(WidgetSize.md)),
            border: Border.all(
              color: Colors.black,
              width: 4,
            )),
        margin: const EdgeInsets.symmetric(horizontal: WidgetSize.regular, vertical: WidgetSize.l),
        child: Column(
          children: [
            Padding(
              padding: WidgetGutter.all.regular,
              child: WidgetText(
                "PlayList du verseau",
                style: context.textTheme.headline4.copyWith(color: Colors.black),
              ),
            ),
            const Divider(color: Colors.black, thickness: 4, height: 0),
            WidgetSpace.regular,
            Container(
              width: 127,
              height: 127,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFFF9EE),
              ),
            ),
            WidgetSpace.regular,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: WidgetButton("Consulter"),
            ),
            WidgetSpace.regular,
          ],
        ),
      ),
    );
  }
}
