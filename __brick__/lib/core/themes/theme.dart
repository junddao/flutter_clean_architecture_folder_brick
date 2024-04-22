import '../../index.dart';

ThemeData lightThemeData(ColorScheme colorScheme, BuildContext context) {
  return ThemeData(
    // 터치 이펙트 제거
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,

    colorScheme: colorScheme,

    // fontFamily: DDUFontFamily.koreanFontFamily,
  );
}

ThemeData darkThemeData(ColorScheme colorScheme, BuildContext context) {
  return ThemeData(
    // 터치 이펙트 제거
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,

    colorScheme: colorScheme,

    // fontFamily: DDUFontFamily.koreanFontFamily,
  );
}
