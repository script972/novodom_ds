import 'package:flutter/material.dart';
import 'package:novodom_ds/component/quarantine/icon_action_button.dart';
import 'package:novodom_ds/component/red_text.dart';
import 'package:novodom_ds/core/redecor_theme.dart';

class BaseListScreen extends StatefulWidget {
  const BaseListScreen({
    super.key,
  });

  @override
  State<BaseListScreen> createState() => _BaseListScreenState();
}

class _BaseListScreenState extends State<BaseListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Base list'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CrossedText(),
          _ButtonExample(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _CrossedText extends StatelessWidget {
  const _CrossedText({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Crossed out text'),
      children: [

      ],
    );
  }
}

class _ButtonExample extends StatelessWidget {
  const _ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Button'),
      children: [
        IconActionButton(
          title: 'Button',
          borderRadius: BorderRadius.zero,
          // textStyle: TextStyle(color: Colors.black),
          //textStyle: RedecorTheme(context).textTheme.crossedText,
        ),
        SizedBox(
          width: 8.0,
        ),
        IconActionButton(
          onPressed: () {},
          title: 'Title',
          activeGradient: const LinearGradient(
            colors: <Color>[
              Color(0xffF06A6F),
              Color(0xffF06A6F),
            ],
            stops: [0, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          textColor: Colors.white,
          disabledColor: Colors.grey,
          fontSize: 16.0,
          textShadow: Shadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 1.83,
            offset: const Offset(0, 1),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
        ),
        /* IconActionButton(
          onPressed: () {
            print('Button pressed');
          },
          title: 'Save',
          activeGradient: gradientGreenLinear,
          textColor: colorWhite,
          disabledColor: Colors.white,
          fontSize: 15,
          textShadow: Shadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 1.83,
            offset: const Offset(0, 1.0),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
        )*/
      ],
    );
  }
}

class _TextStyle extends StatelessWidget {
  const _TextStyle({super.key});

  @override //RedText
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Redecor text'),
      children: [
        RedText(
          'Text text',
          textTheme: NovodomTheme(context).textTheme,
          style: NovodomTheme(context).textTheme.crossedText,
        ),
      ],
    );
  }
}
