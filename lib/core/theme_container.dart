import 'package:novodom_ds/core/novodom_theme.dart';
import 'package:novodom_ds/enviroment_variables.dart';
import 'package:novodom_ds/theme/core/novodom_theme_light.dart';

abstract class ThemeFactory {
  static NovodomTheme get lightTheme => _vendorTheme.lightTheme;

  static NovodomTheme get darkTheme => _vendorTheme.darkTheme;

  //TODO(denisM): refactor it. It should be determinate by segment parameters
  static const _isCoreTheme = EnvironmentVariables.vendorThemeConfiguration == 1;
  //static const _isEasterTheme = EnvironmentVariables.vendorThemeConfiguration == 2;

  //we still support only one theme. Functionality for selected theme for future
  static final coreTheme = ThemeContainer(NovodomCoreThemeLight(), NovodomCoreThemeLight());

  static final _defaultVendorTheme = coreTheme;

  static ThemeContainer get _vendorTheme {
    if (_isCoreTheme) return coreTheme;
   // if (_isEasterTheme) return easterTheme;
    return _defaultVendorTheme;
  }
}

class ThemeContainer {
  final NovodomTheme lightTheme;
  final NovodomTheme darkTheme;

  //TODO(denisM): field should be added for support bigScreen, Web and some other

  ThemeContainer(this.lightTheme, this.darkTheme);
}
