import '../../../index.dart';

extension ElevatedButtonThemeDataExtension on ElevatedButtonThemeData {
  ButtonStyle blueWhite(BuildContext context) => ElevatedButton.styleFrom(
        backgroundColor: context.blue500,
        foregroundColor: context.white,
        disabledBackgroundColor: context.grey300,
        disabledForegroundColor: context.white,
      );

  ButtonStyle secondaryWhite(BuildContext context) => ElevatedButton.styleFrom(
        backgroundColor: context.theme.colorScheme.secondary,
        foregroundColor: context.theme.colorScheme.onSecondary,
        disabledBackgroundColor: context.theme.colorScheme.onSurface.withOpacity(0.12),
        disabledForegroundColor: context.theme.colorScheme.outline,
      );
  ButtonStyle primaryWhiteBoard(BuildContext context) => ElevatedButton.styleFrom(
        backgroundColor: context.theme.colorScheme.primary,
        foregroundColor: context.theme.colorScheme.onPrimary,
        disabledBackgroundColor: context.theme.colorScheme.onSurface.withOpacity(0.12),
        disabledForegroundColor: context.theme.colorScheme.outline,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      );

  ButtonStyle size(
    double? height,
    double? width,
  ) =>
      ElevatedButton.styleFrom(
        minimumSize: Size(width ?? 64, height ?? 46),
      );

  ButtonStyle get infinity => ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 46),
      );

  ButtonStyle insets(
    EdgeInsetsGeometry padding,
  ) =>
      ElevatedButton.styleFrom(
        padding: padding,
      );
}
