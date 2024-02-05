import 'package:aurora/app/ui/colors/colors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_provider.g.dart';

@riverpod
class ThemeColors extends _$ThemeColors {
  final _initialTheme = mocha;

  @override
  CustomColorScheme build() {
    return _initialTheme;
  }

  changeColorScheme(AppThemes theme) {
    switch (theme) {
      case AppThemes.latte:
        state = latte;
      case AppThemes.frappe:
        state = frappe;
      case AppThemes.macchiato:
        state = macchiato;
      case AppThemes.mocha:
        state = mocha;
      default:
        state = mocha;
    }
  }
}
