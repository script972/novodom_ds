import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:novodom_ds/component/custom_sidebar.dart';
import 'package:novodom_ds/component/sidebar_tab.dart';
import 'package:novodom_ds/component/square_themed_button.dart';
import 'package:novodom_ds/core/novodom_theme.dart';
import 'package:novodom_ds/default/default_palette.dart';

enum SidebarTabType {
  dashboard,
  questionnaire,
  iDesign,
  propertyDocuments,
  measurements,
  floorPlan,
  digitalMoodBoards,
  weDesign,
  myOrder,
  permitDocuments,
}

class SidebarLayout extends StatefulWidget {
  const SidebarLayout({
    super.key,
    required this.child,
    required this.username,
    required this.selectedProject,
    required this.userAvatar,
  });

  final String username;
  final String? userAvatar;
  final String? selectedProject;
  final Widget child;

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  bool _sidebarOpened = true;
  SidebarTabType _activeTab = SidebarTabType.dashboard;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            CustomSidebar(
              sidebarOpened: _sidebarOpened,
              userAvatar: widget.userAvatar,
              username: widget.username,
              userEmail: widget.selectedProject,
              onMoreTap: () async {
                setState(() {
                  _sidebarOpened = !_sidebarOpened;
                });
              },
              rowButtons: [
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.chat,
                  onTap: () {
                    debugPrint('chat');
                  },
                ),
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.legal,
                  onTap: () {
                    debugPrint('legal');
                  },
                ),
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.card,
                  onTap: () {
                    debugPrint('card');
                  },
                ),
                SquareThemedButton(
                  active: false,
                  duotoneIcon: NovodomTheme(context)
                      .assetsTheme
                      .duotoneIcons
                      .notebookSquare,
                  onTap: () {
                    debugPrint('notebookSquare');
                  },
                ),
              ],
              tabs: [
                SidebarTab(
                  text: 'Project Dashboard',
                  active: _activeTab == SidebarTabType.dashboard,
                  disabled: false,
                  mini: !_sidebarOpened,
                  duotoneIcon: NovodomTheme(context)
                      .assetsTheme
                      .duotoneIcons
                      .elementPlus,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.dashboard;
                    });
                  },
                ),
                SidebarTab(
                  text: 'Questionnaire',
                  active: _activeTab == SidebarTabType.questionnaire,
                  disabled: false,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.question,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.questionnaire;
                    });
                  },
                ),
                SidebarTab(
                  text: 'iDesign',
                  active: _activeTab == SidebarTabType.iDesign,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.penTool,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.iDesign;
                    });
                  },
                ),
                SidebarTab(
                  text: 'Property Documents',
                  active: _activeTab == SidebarTabType.propertyDocuments,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.document,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.propertyDocuments;
                    });
                  },
                ),
                SidebarTab(
                  text: 'Measurements',
                  active: _activeTab == SidebarTabType.measurements,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.ruler,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.measurements;
                    });
                  },
                ),
                SidebarTab(
                  text: 'Floor Plan',
                  active: _activeTab == SidebarTabType.floorPlan,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.layers,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.floorPlan;
                    });
                  },
                ),
                SidebarTab(
                  text: 'Digital Mood Boards',
                  active: _activeTab == SidebarTabType.digitalMoodBoards,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.pallete,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.digitalMoodBoards;
                    });
                  },
                ),
                SidebarTab(
                  text: 'weDesign',
                  active: _activeTab == SidebarTabType.weDesign,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.carousel,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.weDesign;
                    });
                  },
                ),
                SidebarTab(
                  text: 'My Order',
                  active: _activeTab == SidebarTabType.myOrder,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.clipboard,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.myOrder;
                    });
                  },
                ),
                SidebarTab(
                  text: 'Permit Documents',
                  active: _activeTab == SidebarTabType.permitDocuments,
                  disabled: true,
                  mini: !_sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.signature,
                  onTap: () {
                    setState(() {
                      _activeTab = SidebarTabType.permitDocuments;
                    });
                  },
                ),
              ],
              onProjectsTap: () async {
                debugPrint('onPlusTap');
              },
              onProjectTap: () {
                debugPrint('onProjectTap');
              },
              onUserTap: () {},
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: DefaultPalette.smokeColor,
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(32),
                    bottomStart: Radius.circular(32),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: widget.child,
              ),
            ),
          ],
        ),
        AnimatedPositioned(
          duration: NovodomTheme(context).durationTheme.animationDuration,
          left: ((_sidebarOpened ? 220 : 52) + 48) - 14,
          top: MediaQuery.sizeOf(context).height / 2 - 14,
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
