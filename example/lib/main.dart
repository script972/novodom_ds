import 'package:example/components_example_page.dart';
import 'package:flutter/material.dart';
import 'package:novodom_ds/index.dart';

void main() {
  runApp(const RedecorDemoDs());
}

class RedecorDemoDs extends StatelessWidget {
  const RedecorDemoDs({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueProvider<ThemeMode, ThemeMode>(
        shouldNotify: (newMode, oldMode) => newMode.index != oldMode.index,
    future: getThemeMode(context),
    initValue: ThemeMode.system,
    builder: (_, themeMode) {
          return MaterialApp(
            title: 'Redecor. Demo DS',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const ComponentsExamplePage(),
          );
    });
  }

  Future<ThemeMode> getThemeMode(BuildContext buildContext) async {
    /*final themeModeValue =
      Provider.of<ISolutionRepository>(buildContext).getTheme();*/
    return ThemeMode.values[/*await themeModeValue ??*/ 0];
  }
}

