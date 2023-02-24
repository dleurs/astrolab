import 'package:astrolab/data/horoscope_data_mock.dart';
import 'package:astrolab/model/month.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';

class Horoscope {
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
  neptune("Neptune"),
  terre("Terre"),
  lune("Lune");

  final String value;
  const Planet(this.value);
}

enum Power {
  compassion("Compassion"),
  instinct("Instinct"),
  intelligence("Intelligence"),
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
  peur("peur"),
  naivete("naïveté"),
  tristesse("tristesse"),
  inflexibilite("Inflexibilité"),
  colerique("Colérique"),
  lunatique("Lunatique"),
  pessimisme("Pessimiste"),
  manipulation("Manipulation");

  final String value;
  const Weakness(this.value);
}

class HoroscopeUtils {
  static Horoscope getHoroscope({required int day, required int month}) {
    final value = HoroscopeDataMock.all;
    for (Horoscope horoscope in HoroscopeDataMock.all) {
      final initialDate = DateTime(DatePickerWidget.defaultYear, month, day);
      if (horoscope.beginDate1.isBefore(initialDate) && horoscope.endDate1.isAfter(initialDate) ||
          (horoscope.beginDate2?.isBefore(initialDate) ?? false) && (horoscope.endDate2?.isAfter(initialDate) ?? false)) {
        return horoscope;
      }
    }
    return HoroscopeDataMock.cancer;
  }

  static dayMonthFormat(DateTime date) {
    final strMonth = MonthUtils.all.firstWhere((month) => month.month == date.month, orElse: () => Month.janvier);
    return "${date.day} ${strMonth.value}";
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
