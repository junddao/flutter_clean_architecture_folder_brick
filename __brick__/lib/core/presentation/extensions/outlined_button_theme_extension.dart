import '../../../index.dart';

extension OutlinedButtonThemeDataExtension on OutlinedButtonThemeData {
  ButtonStyle primaryWhite(BuildContext context) => OutlinedButton.styleFrom(
        side: BorderSide(
          color: context.theme.colorScheme.outline,
          width: 1,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: context.theme.colorScheme.primary,
        disabledBackgroundColor: context.theme.colorScheme.onSurface.withOpacity(0.12),
        disabledForegroundColor: context.theme.colorScheme.outline,
      );

  ButtonStyle size(
    double? height,
    double? width,
  ) =>
      ElevatedButton.styleFrom(
        minimumSize: Size(width ?? 64, height ?? 52),
      );

  ButtonStyle get infinity => ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 52),
      );

  ButtonStyle insets(
    EdgeInsetsGeometry padding,
  ) =>
      ElevatedButton.styleFrom(
        padding: padding,
      );
}
