part of 'theme.dart';

abstract class WidgetColorScheme extends ColorScheme {
  final Color positive;
  final Color negative;
  final Color warning;
  final Color information;
  final Color informationContainer;
  final Color onInformationContainer;
  final Color disabledPrimary;
  final Color positiveContainer;
  final Color radioButton;
  final Color onAccountHeader;
  final Color onAccountHeaderText;
  final Color onStatusCard;
  final Color onStatusCardText;
  final _GradientScheme gradients;

  const WidgetColorScheme(
      {required brightness,
      required primary,
      required onPrimary,
      required secondary,
      required onSecondary,
      required background,
      required onBackground,
      required surface,
      required onSurface,
      required primaryContainer,
      required onPrimaryContainer,
      required this.positive,
      required this.negative,
      required this.warning,
      required this.information,
      required this.informationContainer,
      required this.onInformationContainer,
      required this.disabledPrimary,
      required this.positiveContainer,
      required this.radioButton,
      required this.onAccountHeader,
      required this.onAccountHeaderText,
      required this.onStatusCard,
      required this.onStatusCardText,
      required this.gradients})
      : super(
            brightness: brightness,
            primary: primary,
            onPrimary: onPrimary,
            primaryContainer: primaryContainer,
            onPrimaryContainer: onPrimaryContainer,
            secondary: secondary,
            onSecondary: onSecondary,
            background: background,
            onBackground: onBackground,
            surface: surface,
            onSurface: onSurface,
            error: negative,
            onError: onPrimary);
}

class _LightColors extends WidgetColorScheme {
  _LightColors()
      : super(
            brightness: Brightness.light,
            primary: const Color(0xFF202031),
            onPrimary: const Color(0xFFFFFFFF),
            secondary: const Color(0xFFE3E3E3),
            onSecondary: const Color(0xFF908F96),
            background: Colors.black,
            onBackground: Colors.white,
            surface: const Color(0xFFF6F6F6),
            onSurface: const Color(0xFF6F6F71),
            onPrimaryContainer: const Color(0xFFA496FC),
            primaryContainer: const Color(0xFFCFCED6),
            positive: const Color(0xFF06C167),
            negative: const Color(0xFFEF5350),
            warning: const Color(0xFFFF6937),
            information: const Color(0xFF276EF1),
            disabledPrimary: const Color(0xFFFFB0AE),
            positiveContainer: const Color(0xFFECF3FF),
            informationContainer: const Color(0xFFECF3FF),
            onInformationContainer: const Color(0xFF28253D),
            radioButton: const Color(0xFF161717),
            onAccountHeader: const Color(0xFFFFFFFF),
            onAccountHeaderText: const Color(0xFF28253D),
            onStatusCard: const Color(0xFF28253D).withOpacity(0.9),
            onStatusCardText: const Color(0xFFFFFFFF),
            gradients: _LightGradientScheme());
}

class _DarkColors extends WidgetColorScheme {
  _DarkColors()
      : super(
            brightness: Brightness.dark,
            primary: const Color(0xFFF1EFFF),
            onPrimary: const Color(0xFF1E1C2A),
            secondary: const Color(0xFF393843),
            onSecondary: const Color(0xFF76747D),
            background: const Color(0xFF1E1C2B),
            onBackground: const Color(0xFFFFFFFF),
            surface: const Color(0xFF2A2838),
            onSurface: const Color(0xFFCDCBD8),
            onPrimaryContainer: const Color(0xFF46454E),
            primaryContainer: const Color(0xFF46454E),
            positive: const Color(0xFF06C167),
            negative: const Color(0xFFEF5350),
            warning: const Color(0xFFFF6937),
            information: const Color(0xFF4083FF),
            disabledPrimary: const Color(0xFFFFB0AE),
            positiveContainer: const Color(0xFFECF3FF),
            informationContainer: const Color(0xFF2B3953),
            onInformationContainer: const Color(0xFFFFFFFF),
            radioButton: const Color(0xFF76747D),
            onAccountHeader: const Color(0xFFFFFFFF),
            onAccountHeaderText: const Color(0xFF1E1C2A),
            onStatusCard: const Color(0xFF2A2838).withOpacity(0.9),
            onStatusCardText: const Color(0xFFFFFFFF),
            gradients: _DarkGradientScheme());
}

class WidgetColorSchemeExt extends ThemeExtension<WidgetColorSchemeExt> {
  final WidgetColorScheme colors;

  WidgetColorSchemeExt(this.colors);

  @override
  ThemeExtension<WidgetColorSchemeExt> copyWith() {
    return this;
  }

  @override
  ThemeExtension<WidgetColorSchemeExt> lerp(ThemeExtension<WidgetColorSchemeExt>? other, double t) {
    return this;
  }
}

abstract class _GradientScheme {
  final LinearGradient account;
  final LinearGradient wallet;
  final LinearGradient cardBackground;
  final LinearGradient statement;
  final LinearGradient dashBoardBackground;

  _GradientScheme({
    required this.account,
    required this.wallet,
    required this.cardBackground,
    required this.statement,
    required this.dashBoardBackground,
  });
}

class _LightGradientScheme extends _GradientScheme {
  _LightGradientScheme()
      : super(
          account: const LinearGradient(
            colors: [Color(0xFF037CFF), Color(0xFF46E9FF)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          wallet: const LinearGradient(
            colors: [Color(0xFF9B49FF), Color(0xFFEAD5FF)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          cardBackground: const LinearGradient(
            colors: [Color(0xFF047CE2), Color(0xFF29DFFF)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          statement: const LinearGradient(
            colors: [Color(0xFF037CFF), Color(0xFF46E9FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          dashBoardBackground: const LinearGradient(
            colors: [Color(0xFFF6F6F6), Colors.white, Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.0, 0.22, 1],
          ),
        );
}

class _DarkGradientScheme extends _GradientScheme {
  _DarkGradientScheme()
      : super(
          account: const LinearGradient(
            colors: [Color(0xFF037CFF), Color(0xFF46E9FF)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          wallet: const LinearGradient(
            colors: [Color(0xFF9B49FF), Color(0xFFEAD5FF)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          cardBackground: const LinearGradient(
            colors: [Color(0xFF047CE2), Color(0xFF29DFFF)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          statement: const LinearGradient(
            colors: [Color(0xFF037CFF), Color(0xFF46E9FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          dashBoardBackground: const LinearGradient(
            colors: [Color(0xFF2A2838), Color(0xFF1E1C2B), Color(0xFF1E1C2B)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.0, 0.22, 1],
          ),
        );
}
