enum Month {
  janvier("Janvier", month: 1, maxDays: 31),
  fevrier("Février", month: 2, maxDays: 29),
  mars("Mars", month: 3, maxDays: 31),
  avril("Avril", month: 4, maxDays: 30),
  mai("Mai", month: 5, maxDays: 31),
  juin("Juin", month: 6, maxDays: 30),
  juillet("Juillet", month: 7, maxDays: 31),
  aout("Août", month: 8, maxDays: 31),
  septembre("Septembre", month: 9, maxDays: 30),
  octobre("Octobre", month: 10, maxDays: 31),
  novembre("Novembre", month: 11, maxDays: 30),
  decembre("Décembre", month: 12, maxDays: 31);

  final String value;
  final int month;
  final int maxDays;
  const Month(this.value, {required this.month, required this.maxDays});
}

class MonthUtils {
  static List<Month> get year => [
        Month.janvier,
        Month.fevrier,
        Month.mars,
        Month.avril,
        Month.mai,
        Month.juin,
        Month.juillet,
        Month.aout,
        Month.septembre,
        Month.octobre,
        Month.novembre,
        Month.decembre
      ];
}
