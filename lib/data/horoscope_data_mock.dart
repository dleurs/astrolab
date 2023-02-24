import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';

class HoroscopeDataMock {
  static final all = [
    cancer,
  ];

  static final cancer = Horoscope(
    name: 'Cancer',
    iconPath: 'assets/svg/cancer_icon.svg',
    bio:
        "Je suis probablement le signe le plus émotionnel ici. Il est vraiment difficile d'apprendre à me connaître. Je prends soin de ma famille et je m'attache très facilement aux gens. J'ai souvent des sautes d'humeur qui peuvent me rendre égoïste, manipulateur et impatient.",
    beginDate: DateTime(DatePickerWidget.defaultYear, 6, 21),
    endDate: DateTime(DatePickerWidget.defaultYear, 7, 22),
    element: Element.eau,
    planet: Planet.lune,
    powers: [
      Power.loyaute,
      Power.emotions,
      Power.determination,
    ],
    weaknesses: [
      Weakness.lunatique,
      Weakness.manipulation,
      Weakness.pessimisme,
    ],
  );
}
