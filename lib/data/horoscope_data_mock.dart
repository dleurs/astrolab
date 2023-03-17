import 'package:astrolab/model/horoscope.dart';
import 'package:astrolab/ui/pick_horoscope_wheel/date_picker_widget.dart';

class HoroscopeDataMock {
  static final verseau = Horoscope(
      name: 'Verseau',
      iconPath: 'assets/svg/verseau_icon.svg',
      bio:
          "Je suis le signe astro le plus spécial du zodiaque. J'ai souvent tendance à suivre le moment présent et à considérer le monde comme un lieu aux possibilités infinies. Aussi énergique et excentrique que je puisse être, j'ai aussi un côté très timide et très tranquille. Je crois en l'idéalisme et je vois les gens sans aucun préjugé.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.january, 20, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.february, 18, 2),
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
      horoscopeOfTheDay:
          "Les affaires de cœur prendront une place plus importante. Vous serez particulièrement disponible pour vos proches, souriant et détendu. Voilà qui ravira votre partenaire et votre entourage. Célibataire, vous attirerez bien des regards.");

  static final poisson = Horoscope(
    name: 'Poisson',
    iconPath: 'assets/svg/poisson_icon.svg',
    bio:
        "Je pense que ma plus grande qualité, c'est que je suis probablement le signe le plus désintéressé du groupe. J'ai une très grande compassion et capacité émotionnelle, mais seulement si je suis capable de ne pas laisser les émotions extérieures me submerger. Je crois également au pardon - je pense que tout le monde mérite une seconde chance.",
    beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.february, 19, 0),
    endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.march, 20, 2),
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
    horoscopeOfTheDay:
        "Les liens sentimentaux sont épanouis grâce à une communication idyllique. Les événements vous fourniront l'occasion de sortir du train-train quotidien. Mais les relations en famille pourraient poser problème si vous ne prenez pas rapidement les décisions qui s'imposent. Ne laissez pas pourrir la situation.",
  );

  static final belier = Horoscope(
      name: 'Bélier',
      iconPath: 'assets/svg/belier_icon.svg',
      bio:
          "Je suis le premier signe du zodiaque. J'aime être le numéro un dans tout ce que je fais! En fait, c'est mon chiffre préféré, alors ce n'est pas surprenant pour moi de toujours finir en premier.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.march, 21, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.april, 19, 2),
      element: Element.feu,
      planet: Planet.mars,
      powers: [
        Power.honnetere,
        Power.courage,
        Power.optimisme,
      ],
      weaknesses: [
        Weakness.mauvaiseHumeur,
        Weakness.impulsivite,
        Weakness.impatience,
      ],
      horoscopeOfTheDay:
          "Besoin d'indépendance de l'un ou de l'autre, petits mensonges ou malentendus sont possibles, mais cela ne portera pas à conséquence. Ne vous montrez pas trop protecteur envers votre partenaire. N'en faites pas trop ! Célibataire, toutes vos réticences voleront en éclats.");

  static final taureau = Horoscope(
      name: 'Taureau',
      iconPath: 'assets/svg/taureau_icon.svg',
      bio:
          "Je suis le signe astro le plus travaillant du zodiaque. Mes sens du toucher et du goût sont ce pour quoi je suis connu. Mes traits de caractère typiques du Taureau font de moi quelqu'un très conservateur dans mes croyances, alors n'essayez même pas de me faire changer d'avis !",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.april, 20, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.may, 20, 2),
      element: Element.terre,
      planet: Planet.terre,
      powers: [
        Power.patience,
        Power.fiabilite,
        Power.responsabilite,
      ],
      weaknesses: [
        Weakness.possessivite,
        Weakness.entetement,
      ],
      horoscopeOfTheDay:
          "Pas de grands bouleversements dans votre vie affective mais de bons moments. Veillez à mettre de l'intensité, de la passion dans vos relations conjugales. Vous ne le regretterez pas ! Célibataire, vos amours seront tumultueuses et placées sous le signe de la sensualité.");

  static final gemeaux = Horoscope(
      name: 'Gémeaux',
      iconPath: 'assets/svg/gemeaux_icon.svg',
      bio:
          "Certaines personnes penseront que j'ai plusieurs personnalités, mais en fait, c'est seulement parce que je suis prêt à m'amuser et à vivre des aventures, mais je peux aussi être sérieux et réfléchi.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.may, 21, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.june, 20, 2),
      element: Element.air,
      planet: Planet.mercure,
      powers: [
        Power.apprentissageRapide,
        Power.curiosite,
        Power.affectuosite,
      ],
      weaknesses: [
        Weakness.stress,
        Weakness.hesitation,
        Weakness.incoherence,
      ],
      horoscopeOfTheDay:
          "C'est en dialoguant dans le plus grand calme et dans l'intimité que vous allez tirer les choses au clair. N'attendez pas que la situation s'envenime. Soyez prévenant avec les membres de votre famille. Célibataire, rien ni personne ne vous convient en ce moment.");

  static final cancer = Horoscope(
      name: 'Cancer',
      iconPath: 'assets/svg/cancer_icon.svg',
      bio:
          "Je suis probablement le signe le plus émotionnel ici. Il est vraiment difficile d'apprendre à me connaître. Je prends soin de ma famille et je m'attache très facilement aux gens. J'ai souvent des sautes d'humeur qui peuvent me rendre égoïste, manipulateur et impatient.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.june, 21, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.july, 22, 2),
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
      horoscopeOfTheDay:
          "Pétulant et malicieux, vous pourrez aspirer à un bonheur sans nuages. En effet, si votre vie de couple a essuyé quelques revers ces derniers jours, la situation devrait se normaliser. Votre partenaire sera d'humeur plus conciliante et la communication sera bien meilleure. Célibataire, la journée s'annonce forte en séduction. Il n'est pas certain que votre coup de cœur soit durable. En effet, passé l'emballement des débuts, votre prince(sse) charmant(e) vous apparaîtra peut-être sous un jour moins plaisant.");

  static final lion = Horoscope(
      name: 'Lion',
      iconPath: 'assets/svg/lion_icon.svg',
      bio:
          "En tant que Lion, le leadership, la créativité et la confiance coulent dans mes veines. Ce n'est pas une coïncidence si on m'appelle 'le roi de la jungle'. Ma dominance et mon attractivité me rendent irrésistible ;). Je ne suis pas du genre à suivre les gens, c'est plutôt eux qui me suivent.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.july, 23, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.august, 22, 2),
      element: Element.feu,
      planet: Planet.soleil,
      powers: [
        Power.sensDeLhumour,
        Power.creativite,
        Power.leadership,
      ],
      weaknesses: [
        Weakness.paresse,
        Weakness.entetement,
        Weakness.arrogance,
      ],
      horoscopeOfTheDay:
          "Querelle possible avec votre partenaire. Tâchez de garder votre sens de l'humour. Souvenez-vous qu'il adoucit les mœurs. Vous relativiserez les conflits.");

  static final vierge = Horoscope(
      name: 'Vierge',
      iconPath: 'assets/svg/vierge_icon.svg',
      bio:
          "En tant que Lion, le leadership, la créativité et la confiance coulent dans mes veines. Ce n'est pas une coïncidence si on m'appelle 'le roi de la jungle'. Ma dominance et mon attractivité me rendent irrésistible ;). Je ne suis pas du genre à suivre les gens, c'est plutôt eux qui me suivent.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.august, 23, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.september, 22, 2),
      element: Element.terre,
      planet: Planet.mercure,
      powers: [
        Power.loyaute,
        Power.methodique,
        Power.travailleur,
      ],
      weaknesses: [Weakness.timidite, Weakness.insecurite],
      horoscopeOfTheDay:
          "Les astres vous souriront bientôt. Célibataire, ne vous laissez pas aller au pessimisme et au découragement. Si la période n'est pas propice aux rencontres, la patience vous apportera bientôt de belles surprises.");

  static final balance = Horoscope(
      name: 'Balance',
      iconPath: 'assets/svg/balance_icon.svg',
      bio:
          "Laissez-moi vous dire une chose, je déteste être seul! Pour moi, le partenariat et le travail d'équipe sont vraiment importants. Je sais que c'est un peu bizarre, mais mon plus grand rêve est de rencontrer mon clone. Je crois aussi fermement à l'égalité et à la nécessité de faire ce qui est juste. Je ferais tout pour éviter d'être dans un conflit - je déteste les drames !",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.september, 23, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.october, 22, 2),
      element: Element.air,
      planet: Planet.venus,
      powers: [
        Power.cooperation,
        Power.juste,
      ],
      weaknesses: [
        Weakness.indecis,
        Weakness.evitement,
      ],
      horoscopeOfTheDay:
          "En couple, vous aimez titiller votre partenaire pour un oui, pour un non mais aujourd'hui il ne sera pas d'humeur à se laisser faire et une dispute est plus que probable. Célibataire, vous êtes trop compliqué ! Depuis quelque temps, personne ne trouve grâce à vos yeux ! Soyez plus ouvert et laisser une chance de vous plaire aux personnes que vous rencontrez.");

  static final scorpion = Horoscope(
      name: 'Scorpion',
      iconPath: 'assets/svg/scorpion_icon.svg',
      bio:
          "Je suis probablement le signe le plus déterminé du zodiaque. Quand je veux quelque chose, je vais le chercher! J'aime me définir comme un leader. Je peux parfois devenir manipulateur et jaloux, mais je crois que c'est ce qu'on a en commun.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.october, 23, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.november, 21, 2),
      element: Element.eau,
      planet: Planet.mars,
      powers: [
        Power.puissance,
        Power.passion,
        Power.courage,
      ],
      weaknesses: [
        Weakness.mefiance,
        Weakness.jalousie,
        Weakness.manipulation,
      ],
      horoscopeOfTheDay:
          "Beau temps pour les amoureux ! Vos rêves ont de grandes chances de prendre forme dans les jours qui viennent. Vous évoluez dans une ambiance faite de tendresse et de passion. Célibataire, préparez-vous à vivre un grand amour. Vous avez beau être indépendant, vous ne pourrez plus esquiver la flèche de Cupidon !");

  static final sagittaire = Horoscope(
      name: 'Sagittaire',
      iconPath: 'assets/svg/sagittaire_icon.svg',
      bio:
          "Je sens que mon but est de trouver le sens de la vie. Il doit bien y avoir une raison pour laquelle nous sommes tous ici, non ? J'essaie toujours de voir les choses sous un angle positif plutôt que de me critiquer. Je suis un extraverti qui est accro aux changements. Oh, et aussi, je n'ai littéralement aucun filtre - je dis tout ce qui me passe par la tête. - Désolé d'avance!",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.november, 22, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.december, 21, 2),
      element: Element.feu,
      planet: Planet.jupiter,
      powers: [
        Power.sensDeLhumour,
        Power.generosite,
        Power.idealiste,
      ],
      weaknesses: [
        Weakness.impatience,
        Weakness.impulsivite,
      ],
      horoscopeOfTheDay: "Dépêchez-vous de discuter avec votre partenaire de certains problèmes épineux qu'il faut régler.");

  static final capricorne = Horoscope(
      name: 'Capricorne',
      iconPath: 'assets/svg/capricorne_icon.svg',
      bio:
          "Salut, je suis Capricorne! J'aime à penser que je suis le signe le plus responsable du zodiaque. Je suis à la fois très sérieux et indépendant, ce qui peut être difficile dans une relation. Je suis aussi très doué pour diriger et gérer les gens. Je dirais que ma plus grande faiblesse est que je suis aussi têtu qu'un taureau, et que je déteste les changements.",
      beginDate1: DateTime(DatePickerWidget.defaultYear, DateTime.december, 22, 0),
      endDate1: DateTime(DatePickerWidget.defaultYear, DateTime.december, 31, 2),
      beginDate2: DateTime(DatePickerWidget.defaultYear, DateTime.january, 1, 0),
      endDate2: DateTime(DatePickerWidget.defaultYear, DateTime.january, 19, 2),
      element: Element.terre,
      planet: Planet.saturne,
      powers: [
        Power.responsabilite,
        Power.maitriseDeSoi,
        Power.travailleur,
      ],
      weaknesses: [
        Weakness.entetement,
        Weakness.pessimisme,
        Weakness.rancunier,
      ],
      horoscopeOfTheDay:
          "Mêlez à vos relations sentimentales un zeste de fantaisie et d'humour. Vous verrez la vie sous un autre angle en faisant preuve de nouveauté. Ne craignez pas d'être jugé, votre partenaire saura apprécier vos initiatives et si vous avez des enfants, ils seront heureux de ces changements. Célibataire, vous ne manquez pas de charme et votre pouvoir de séduction est au plus haut ! Il serait peut-être temps d'en profiter si vous voulez rencontrer l'âme sœur.");

  static final List<Horoscope> all = [
    verseau,
    poisson,
    belier,
    taureau,
    gemeaux,
    cancer,
    vierge,
    lion,
    balance,
    scorpion,
    sagittaire,
    capricorne,
  ];
}
