import 'package:astrolab/data/horoscope_data_mock.dart';
import 'package:astrolab/model/month.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';
import 'package:flutter/material.dart';

class Horoscope with ChangeNotifier {
  String name;
  String iconPath;
  String bio;
  DateTime beginDate1;
  DateTime endDate1;
  DateTime? beginDate2; // For capricorne, 22 december to 19 january
  DateTime? endDate2; // For capricorne, 22 december to 19 january
  Element element;
  Planet planet;
  List<Power> powers;
  List<Weakness> weaknesses;

  void changeHoroscope(Horoscope newHoroscope) {
    name = newHoroscope.name;
    iconPath = newHoroscope.iconPath;
    bio = newHoroscope.bio;
    beginDate1 = newHoroscope.beginDate1;
    endDate1 = newHoroscope.endDate1;
    element = newHoroscope.element;
    planet = newHoroscope.planet;
    powers = newHoroscope.powers;
    weaknesses = newHoroscope.weaknesses;
  }

  Horoscope({
    required this.name,
    required this.iconPath,
    required this.bio,
    required this.beginDate1,
    required this.endDate1,
    this.beginDate2,
    this.endDate2,
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
  originalite("Originalité"),
  independance("Indépendance"),
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
  inflexibilite("Inflexibilité"),
  colerique("Colérique"),
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
          if (horoscope.beginDate2 != null && horoscope.endDate2 != null) {
            return horoscope.beginDate1.isBefore(initialDate) && horoscope.endDate1.isAfter(initialDate) ||
                horoscope.beginDate2!.isBefore(initialDate) && horoscope.endDate2!.isAfter(initialDate);
          } else {
            return horoscope.beginDate1.isBefore(initialDate) && horoscope.endDate1.isAfter(initialDate);
          }
        },
        orElse: () => HoroscopeDataMock.cancer,
      );

  static dayMonthFormat(DateTime date) {
    final strMonth = MonthUtils.all.firstWhere((month) => month.month == date.month, orElse: () => Month.janvier);
    return "${date.day} $strMonth";
  }

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
