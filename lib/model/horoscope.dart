import 'package:intl/intl.dart';

class Horoscope {
  final String name;
  final DateTime beginDate;
  final DateTime endDate;
  final Element element;
  final Planet planet;
  final List<Power> powers;
  final List<Stone> stones;

  Horoscope({
    required this.name,
    required this.beginDate,
    required this.endDate,
    required this.element,
    required this.planet,
    required this.powers,
    required this.stones,
  });
}

enum Stone {
  amethyste("Améthyste"),
  agathe("Agathe Mousse"),
  jaspe("Jaspe"),
  grenat("Grenat");

  final String value;
  const Stone(this.value);
}

enum Element {
  air("Air"),
  eau("Eau");

  final String value;
  const Element(this.value);
}

enum Planet {
  uranus("Uranus"),
  terre("Terre");

  final String value;
  const Planet(this.value);
}

enum Power {
  force("Force"),
  souplesse("Souplesse"),
  concentration("Concentration");

  final String value;
  const Power(this.value);
}

class HoroscopeUtils {
  static dayMonthFormat(DateTime date) => DateFormat('dd.MM').format(date);
  static powersTitle(List<Power> stones) {
    String value = "";
    if (stones.isEmpty) {
      return value;
    }
    if (stones.length == 1) {
      value += "Pouvoir: ";
    } else {
      value += "Pouvoirs: ";
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

  static stonesTitle(List<Stone> stones) {
    String value = "";
    if (stones.isEmpty) {
      return value;
    }
    if (stones.length == 1) {
      value += "Pierre: ";
    } else {
      value += "Pierres: ";
    }
    return value;
  }

  static stonesElements(List<Stone> stones) {
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
