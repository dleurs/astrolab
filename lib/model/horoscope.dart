import 'package:astrolab/data/horoscope_data_mock.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Horoscope with ChangeNotifier {
  String name;
  String iconPath;
  String bio;
  DateTime beginDate;
  DateTime endDate;
  Element element;
  Planet planet;
  List<Power> powers;
  List<Weakness> weaknesses;

  void changeHoroscope(Horoscope newHoroscope) {
    name = newHoroscope.name;
    iconPath = newHoroscope.iconPath;
    bio = newHoroscope.bio;
    beginDate = newHoroscope.beginDate;
    endDate = newHoroscope.endDate;
    element = newHoroscope.element;
    planet = newHoroscope.planet;
    powers = newHoroscope.powers;
    weaknesses = newHoroscope.weaknesses;
  }

  Horoscope({
    required this.name,
    required this.iconPath,
    required this.bio,
    required this.beginDate,
    required this.endDate,
    required this.element,
    required this.planet,
    required this.powers,
    required this.weaknesses,
  });
}

enum Element {
  air("Air"),
  eau("Eau");

  final String value;
  const Element(this.value);
}

enum Planet {
  uranus("Uranus"),
  terre("Terre"),
  lune("Lune");

  final String value;
  const Planet(this.value);
}

enum Power {
  loyaute("Loyauté"),
  emotions("Émotions"),
  determination("Détermination"),
  force("Force"),
  souplesse("Souplesse"),
  concentration("Concentration");

  final String value;
  const Power(this.value);
}

enum Weakness {
  lunatique("Lunatique"),
  pessimisme("Pessimiste"),
  manipulation("Manipulation");

  final String value;
  const Weakness(this.value);
}

class HoroscopeUtils {
  static getHoroscope({required int day, required int month}) => HoroscopeDataMock.all.firstWhere(
        (horoscope) {
          final initialDate = DateTime(DatePickerWidget.defaultYear, month, day);
          return horoscope.beginDate.isBefore(initialDate) && horoscope.endDate.isAfter(initialDate);
        },
        orElse: () => HoroscopeDataMock.cancer,
      );

  static dayMonthFormat(DateTime date) => DateFormat('dd.MM').format(date);
  static powersTitle(List<Power> stones) {
    String value = "";
    if (stones.isEmpty) {
      return value;
    }
    if (stones.length == 1) {
      value += "Force : ";
    } else {
      value += "Forces : ";
    }
    return value;
  }

  static powersElements(List<Power> powers) {
    String value = "";
    for (int i = 0; i < powers.length; i++) {
      value += powers[i].value;
      if (i < (powers.length - 1)) {
        value += ", ";
      }
    }
    return value;
  }

  static weaknessTitle(List<Weakness> stones) {
    String value = "";
    if (stones.isEmpty) {
      return value;
    }
    if (stones.length == 1) {
      value += "Faiblesse : ";
    } else {
      value += "Faiblesses : ";
    }
    return value;
  }

  static weaknessElements(List<Weakness> stones) {
    String value = "";
    for (int i = 0; i < stones.length; i++) {
      value += stones[i].value;
      if (i < (stones.length - 1)) {
        value += ", ";
      }
    }
    return value;
  }
}
