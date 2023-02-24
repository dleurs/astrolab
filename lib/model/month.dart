enum Month {
  janvier("Janvier", 31),
  fevrier("Février", 29),
  mars("Mars", 31),
  avril("Avril", 30),
  mai("Mai", 31),
  juin("Juin", 30),
  juillet("Juillet", 31),
  aout("Août", 31),
  septembre("Septembre", 30),
  octobre("Octobre", 31),
  novembre("Novembre", 30),
  decembre("Décembre", 31);

  final String value;
  final int maxDays;
  const Month(this.value, this.maxDays);
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
