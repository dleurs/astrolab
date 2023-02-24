import 'package:astrolab/model/horoscope.dart';

class HoroscopeDataMock {
  static final verseau = Horoscope(
    name: 'Verseau',
    beginDate: DateTime(2000, 1, 21),
    endDate: DateTime(2000, 2, 18),
    element: Element.air,
    planet: Planet.uranus,
    powers: [Power.force, Power.concentration],
    stones: [
      Stone.amethyste,
      Stone.grenat,
      Stone.agathe,
      Stone.jaspe,
    ],
  );
}
