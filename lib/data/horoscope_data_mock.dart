import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';

class HoroscopeDataMock {
  static final verseau = Horoscope(
    name: 'Verseau',
    iconPath: 'assets/svg/verseau_icon.svg',
    bio:
        "Je suis le signe astro le plus spécial du zodiaque. J'ai souvent tendance à suivre le moment présent et à considérer le monde comme un lieu aux possibilités infinies. Aussi énergique et excentrique que je puisse être, j'ai aussi un côté très timide et très tranquille. Je crois en l'idéalisme et je vois les gens sans aucun préjugé.",
    beginDate1: DateTime(DatePickerWidget.defaultYear, 1, 20),
    endDate1: DateTime(DatePickerWidget.defaultYear, 2, 18),
    element: Element.air,
    planet: Planet.uranus,
    powers: [
      Power.originalite,
      Power.independance,
    ],
    weaknesses: [
      Weakness.inflexibilite,
      Weakness.colerique,
    ],
  );

  static final poisson = Horoscope(
    name: 'Poisson',
    iconPath: 'assets/svg/poisson_icon.svg',
    bio:
        "Je pense que ma plus grande qualité, c'est que je suis probablement le signe le plus désintéressé du groupe. J'ai une très grande compassion et capacité émotionnelle, mais seulement si je suis capable de ne pas laisser les émotions extérieures me submerger. Je crois également au pardon - je pense que tout le monde mérite une seconde chance.",
    beginDate1: DateTime(DatePickerWidget.defaultYear, 2, 19),
    endDate1: DateTime(DatePickerWidget.defaultYear, 3, 20),
    element: Element.eau,
    planet: Planet.neptune,
    powers: [
      Power.compassion,
      Power.instinct,
      Power.intelligence,
    ],
    weaknesses: [
      Weakness.peur,
      Weakness.naivete,
      Weakness.tristesse,
    ],
  );

  static final belier = Horoscope(
    name: 'Bélier',
    iconPath: 'assets/svg/poisson_icon.svg',
    bio:
        "Je pense que ma plus grande qualité, c'est que je suis probablement le signe le plus désintéressé du groupe. J'ai une très grande compassion et capacité émotionnelle, mais seulement si je suis capable de ne pas laisser les émotions extérieures me submerger. Je crois également au pardon - je pense que tout le monde mérite une seconde chance.",
    beginDate1: DateTime(DatePickerWidget.defaultYear, 2, 19),
    endDate1: DateTime(DatePickerWidget.defaultYear, 3, 20),
    element: Element.eau,
    planet: Planet.neptune,
    powers: [
      Power.compassion,
      Power.instinct,
      Power.intelligence,
    ],
    weaknesses: [
      Weakness.peur,
      Weakness.naivete,
      Weakness.tristesse,
    ],
  );

  static final cancer = Horoscope(
    name: 'Cancer',
    iconPath: 'assets/svg/cancer_icon.svg',
    bio:
        "Je suis probablement le signe le plus émotionnel ici. Il est vraiment difficile d'apprendre à me connaître. Je prends soin de ma famille et je m'attache très facilement aux gens. J'ai souvent des sautes d'humeur qui peuvent me rendre égoïste, manipulateur et impatient.",
    beginDate1: DateTime(DatePickerWidget.defaultYear, 6, 21),
    endDate1: DateTime(DatePickerWidget.defaultYear, 7, 22),
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

  static final List<Horoscope> all = [
    verseau,
    poisson,
    cancer,
  ];
}
