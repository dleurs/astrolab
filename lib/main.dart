import 'package:astrolab/model/current_horoscope.dart';
import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/theme/theme.dart';
import 'package:astrolab/ui/horosocope_details/horoscope_details_page.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';
import 'package:astrolab/ui/welcome/welcome.dart';
import 'package:astrolab/ui/welcome/welcome_page.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/pick_horoscope_wheel_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<CurrentHoroscope>(
    create: (_) => CurrentHoroscope(
      HoroscopeUtils.getHoroscope(
        day: DatePickerWidget.initialDay,
        month: DatePickerWidget.initialMonth.month,
      ),
    ),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme(isDark: false).themeData,
      darkTheme: CustomTheme(isDark: true).themeData,
      routes: {
        '/': (context) => const WelcomePage(),
        PickHoroscopeWheel.nameRoute: (context) => const PickHoroscopeWheel(),
        HoroscopeDetailsPage.nameRoute: (context) => const HoroscopeDetailsPage(),
        Welcome.nameRoute: (context) => const Welcome(),
      },
    );
  }
}
