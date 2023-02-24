part of 'theme.dart';

class PlTextTheme extends TextTheme {
  static const textFontFamily = "Afterglow";
  static const textFontFamilyMontserrat = "Montserrat";

  static const robotoFontFamily = "Roboto";
  static const jostFontFamily = "Jost";

  final WidgetColorScheme _colors;

  const PlTextTheme(this._colors);

  @override
  TextStyle get headline1 {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 40,
      height: 43 / 36,
      color: _colors.primary,
    );
  }

  @override
  TextStyle get headline2 {
    return TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 32,
      height: 38 / 32,
      color: _colors.onBackground,
    );
  }

  @override
  TextStyle get headline3 {
    return TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 28 / 24,
      color: _colors.onBackground,
    );
  }

  @override
  TextStyle get headline4 {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 19 / 16,
      color: _colors.primary,
    );
  }

  @override
  TextStyle get subtitle1 {
    return TextStyle(
      fontFamily: textFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1,
      color: _colors.onBackground,
    );
  }

  @override
  TextStyle get subtitle2 {
    return TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 13,
      height: 20 / 13,
      color: _colors.onSurface,
    );
  }

  @override
  TextStyle get bodyText1 {
    return TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: 24 / 15,
      color: _colors.primary,
    );
  }

  @override
  TextStyle get bodyText2 {
    return TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      height: 22 / 13,
      color: _colors.onSurface,
    );
  }

  @override
  TextStyle get bodyText3 {
    return TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 48,
      height: 58.51 / 48,
      color: _colors.onBackground,
    );
  }

  @override
  TextStyle get button {
    return const TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 18 / 15,
      color: Colors.black,
    );
  }

  @override
  TextStyle get caption {
    return const TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 18 / 15,
      color: Colors.white,
    );
  }

  @override
  TextStyle get overline {
    return TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 11,
      height: 16 / 11,
      letterSpacing: 0.5,
      color: _colors.onSurface,
    );
  }

  TextStyle get astroContentMonserrat {
    return const TextStyle(
      fontFamily: textFontFamilyMontserrat,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 20 / 16,
      color: Color(0xFF88CEF0),
    );
  }

  TextStyle get textHeaderStyle {
    return const TextStyle(
      fontFamily: jostFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 60,
      height: 87 / 60,
    );
  }

  TextStyle get textNormalStyle {
    return const TextStyle(
      fontFamily: robotoFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 20,
      height: 23 / 20,
    );
  }
}

class PlTextThemeExt extends ThemeExtension<PlTextThemeExt> {
  final PlTextTheme textTheme;

  PlTextThemeExt(this.textTheme);

  @override
  ThemeExtension<PlTextThemeExt> copyWith() {
    return this;
  }

  @override
  ThemeExtension<PlTextThemeExt> lerp(ThemeExtension<PlTextThemeExt>? other, double t) {
    return this;
  }
}
