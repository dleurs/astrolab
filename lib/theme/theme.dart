import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'colors.dart';
part 'dimensions.dart';
part 'texts.dart';

class CustomTheme {
  final bool isDark;

  CustomTheme({required this.isDark});

  ThemeData get themeData => ThemeData(
        textTheme: textTheme,
        colorScheme: colors,
        extensions: <ThemeExtension<dynamic>>[
          WidgetColorSchemeExt(colors),
          PlTextThemeExt(textTheme),
        ],
      );

  WidgetColorScheme get colors => isDark ? _DarkColors() : _LightColors();

  PlTextTheme get textTheme => PlTextTheme(colors);

  static const textFontFamily = "Afterglow";

  static SystemUiOverlayStyle appOverlayStyle({bool isBlack = true}) {
    /* if (Platform.isIOS) {
      return SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: isBlack ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isBlack ? Brightness.light : Brightness.dark,
      );
    } */
    return SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: isBlack ? Brightness.dark : Brightness.light,
      statusBarBrightness: isBlack ? Brightness.dark : Brightness.light,
    );
  }

  static TextStyle get descriptionTextStyle {
    return body2.copyWith(color: const Color(0xFF757575));
  }

  static TextStyle get transferAmountValueStyle {
    return body3.copyWith(color: const Color(0xFF161717));
  }

  static TextStyle get detailCardButtonLabelStyle {
    return body2.copyWith(color: const Color(0xFF161717));
  }

  static TextStyle get cryptoComingSoonLabelStyle {
    return const TextStyle(
      fontFamily: textFontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 24 / 15,
      color: Color(0xFF28253D),
    );
  }

  static TextStyle get statementSelectedStyle {
    return const TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1,
      color: Color(0xFF28253D),
    );
  }

  static TextStyle get body2 {
    return const TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      height: 16 / 13,
      color: Color(0xFF000000),
    );
  }

  static TextStyle get body3 {
    return const TextStyle(
      fontFamily: textFontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 48,
      height: 58.51 / 48,
      color: Color(0xFF000000),
    );
  }
}

extension ContextTheme on BuildContext {
  WidgetColorScheme get colors => Theme.of(this).extension<WidgetColorSchemeExt>()!.colors;

  PlTextTheme get textTheme => Theme.of(this).extension<PlTextThemeExt>()!.textTheme;
}
