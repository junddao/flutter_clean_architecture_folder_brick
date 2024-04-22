import '../../../index.dart';

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar({
    required Widget content,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: content));
  }
}

extension TextFocusExt on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild!.context!.widget is! EditableText);
  }
}
