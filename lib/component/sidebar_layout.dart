import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:novodom_ds/component/custom_sidebar.dart';
import 'package:novodom_ds/core/novodom_theme.dart';

class SidebarLayout extends StatefulWidget {
  const SidebarLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  bool _sidebarOpened = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          right: 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: MediaQuery.sizeOf(context).width -
                (_sidebarOpened ? 220 : 52) -
                48,
            child: widget.child,
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              CustomSidebar(
                sidebarOpened: _sidebarOpened,
                userAvatar: null,
                username: 'Alice Cooper',
                selectedProject: '232',
                onPlusTap:() async {
                   debugPrint('onPlusTap');
                },
                onProjectTap: () {
                  debugPrint('onProjectTap');
                },
                onChatTap: () {
                  debugPrint('onChatTap');
                },
                onLegalTap: () {
                  debugPrint('onLegalTap');
                },
                onCardTap: () {
                  debugPrint('onCardTap');
                },
                onNotebookTap: () {
                  debugPrint('onNotebookTap');
                },
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          left: ((_sidebarOpened ? 220 : 52) + 48) - 14,
          child: InkWell(
            onTap: () {
              setState(() {
                _sidebarOpened = !_sidebarOpened;
              });
            },
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: NovodomTheme(context).colorTheme.sidebarSizeBtn,
              ),
              child: SvgPicture.asset(
                _sidebarOpened
                    ? NovodomTheme(context).assetsTheme.icons24.arrowLeft
                    : NovodomTheme(context).assetsTheme.icons24.arrowRight,
                colorFilter: ColorFilter.mode(
                  NovodomTheme(context).colorTheme.sidebarSizeBtnIcon,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
