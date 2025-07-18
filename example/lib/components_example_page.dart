import 'package:flutter/material.dart';
import 'package:novodom_ds/index.dart';

class ComponentsExamplePage extends StatefulWidget {
  const ComponentsExamplePage({super.key});

  @override
  State<ComponentsExamplePage> createState() => _ComponentsExamplePageState();
}

class _ComponentsExamplePageState extends State<ComponentsExamplePage> {
  bool _checkboxValue = false;
  bool _radioValue = false;
  bool _changeTabState = false;
  bool _radioTabSelected = false;
  bool _squareThemedButtonActive = false;
  int _sidebarTabSelectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarLayout(
        username: 'Alice Cooper',
        selectedProject: 'johndoe@example.com',
        userAvatar: null,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                '------------------------ CustomSidebar ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              // CustomSidebar(),
              const Text(
                '------------------------ SquareThemedButton ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SquareThemedButton(
                  active: _squareThemedButtonActive,
                  showIndicator: true,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.bed,
                  onTap: () {
                    setState(() {
                      _squareThemedButtonActive = !_squareThemedButtonActive;
                    });
                  }),
              const Text(
                '------------------------ Logo ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Logo(),
              const Text(
                '------------------------ SidebarTab ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SidebarTab(
                text: 'Built-in',
                active: _sidebarTabSelectedIndex == 0,
                onTap: () {
                  setState(() {
                    _sidebarTabSelectedIndex = 0;
                  });
                },
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
              ),
              SidebarTab(
                text: 'Built-in',
                active: _sidebarTabSelectedIndex == 1,
                onTap: () {
                  setState(() {
                    _sidebarTabSelectedIndex = 1;
                  });
                },
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
              ),
              SidebarTab(
                text: 'Built-in',
                disabled: true,
                active: _sidebarTabSelectedIndex == 0,
                onTap: () {
                  setState(() {
                    _sidebarTabSelectedIndex = 0;
                  });
                },
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
              ),
              const Text(
                '------------------------ RadioButtonTab ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              RadioButtonTab(
                text: 'Built-in',
                selected: _radioTabSelected,
                onTap: (v) {
                  setState(() {
                    _radioTabSelected = v;
                  });
                },
              ),
              RadioButtonTab(
                text: 'Built-in',
                disabled: true,
                selected: false,
                onTap: (v) {
                  setState(() {
                    _radioTabSelected = v;
                  });
                },
              ),
              const Text(
                '------------------------ StepTab ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              StepTab(
                text: 'Tab',
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
                type: StepTabState.passed,
                onTap: () {},
              ),
              StepTab(
                text: 'Tab',
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
                type:
                    _changeTabState ? StepTabState.passed : StepTabState.active,
                onTap: () {
                  setState(() {
                    _changeTabState = !_changeTabState;
                  });
                },
              ),
              StepTab(
                text: 'Tab',
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
                type: StepTabState.disabled,
                onTap: () {},
              ),
              StepTab(
                text: 'Tab',
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
                onTap: () {},
              ),
              StepTab(
                text: 'Tab',
                duotoneIcon: NovodomTheme(context).assetsTheme.duotoneIcons.bed,
                type: StepTabState.updates,
                onTap: () {},
              ),
              const Text(
                '------------------------ CustomTextFormField ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const CustomTextFormField(
                label: 'Label',
                hint: 'Hint',
                helper: 'Helper',
              ),
              const Text(
                '------------------------ CustomCheckbox ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
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
              const Text(
                '------------------------ CustomRadioButton ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  CustomRadioButton(
                    selected: _radioValue == true,
                    onTap: (value) {
                      setState(() {
                        _radioValue = true;
                      });
                    },
                  ),
                  CustomRadioButton(
                    selected: _radioValue == false,
                    onTap: (value) {
                      setState(() {
                        _radioValue = false;
                      });
                    },
                  ),
                  CustomRadioButton(
                    selected: false,
                    disabled: true,
                    onTap: (_) {},
                  ),
                ],
              ),
              const Text(
                '------------------------ Size S ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    disabled: true,
                    text: 'Sign In',
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.secondary,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    disabled: true,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    onTap: () async {},
                  ),
                ],
              ),
              const Text(
                '------------------------ Size M ------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    disabled: true,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.secondary,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryBlack,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
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
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async => Future.delayed(
                      const Duration(seconds: 1),
                    ),
                  ),
                  CustomButton(
                    type: ButtonType.tertiaryWhite,
                    disabled: true,
                    duotoneIcon: NovodomTheme(context)
                        .assetsTheme
                        .duotoneIcons
                        .plusCircle,
                    text: 'Sign In',
                    size: ButtonSize.m,
                    onTap: () async {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
