import 'package:flutter/material.dart';
import 'package:novodom_ds/component/custom_button.dart';
import 'package:novodom_ds/component/custom_checkbox.dart';
import 'package:novodom_ds/component/custom_radio_button.dart';

class ComponentsExamplePage extends StatefulWidget {
  const ComponentsExamplePage({super.key});

  @override
  State<ComponentsExamplePage> createState() => _ComponentsExamplePageState();
}

class _ComponentsExamplePageState extends State<ComponentsExamplePage> {
  bool _checkboxValue = false;
  bool _radioValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '------------------------ Checkbox ------------------------',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  CustomCheckbox(
                    value: _checkboxValue,
                    onTap: (value) {
                      setState(() {
                        _checkboxValue = value;
                      });
                    },
                  ),
                  CustomCheckbox(
                    value: false,
                    disabled: true,
                    onTap: (_) {},
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '------------------------ RadioButton ------------------------',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  CustomRadioButton(
                    value: _radioValue,
                    onTap: (value) {
                      setState(() {
                        _radioValue = value;
                      });
                    },
                  ),
                  CustomRadioButton(
                    value: false,
                    disabled: true,
                    onTap: (_) {},
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '------------------------ Size S ------------------------',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    disabled: true,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.secondary,
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.secondary,
                    disabled: true,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    disabled: true,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    disabled: true,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    text: 'Sign In',
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    disabled: true,
                    text: 'Sign In',
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.secondary,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.secondary,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    disabled: true,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    disabled: true,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    disabled: true,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '------------------------ Size M ------------------------',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    disabled: true,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.secondary,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.secondary,
                    disabled: true,
                    size: ButtonSize.m,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    disabled: true,
                    size: ButtonSize.m,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    disabled: true,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    text: 'Sign In',
                    size: ButtonSize.m,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    disabled: true,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.secondary,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.secondary,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    disabled: true,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    disabled: true,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    disabled: true,
                    icon: 'example/assets/icons/Plus-Circle.svg',
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
