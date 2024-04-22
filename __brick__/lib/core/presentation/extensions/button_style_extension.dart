import '../../../index.dart';

extension ButtonStyleExtension on ButtonStyle {
  ButtonStyle size({
    double? height,
    double? width,
  }) {
    return copyWith(minimumSize: MaterialStateProperty.all(Size(width ?? 64, height ?? 52)));
  }

  ButtonStyle get infinity => copyWith(minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)));
  ButtonStyle insets({
    EdgeInsetsGeometry? padding,
  }) {
    return copyWith(padding: MaterialStateProperty.all(padding));
  }
}
