import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:novodom_ds/component/custom_sidebar.dart';
import 'package:novodom_ds/core/novodom_theme.dart';
import 'package:novodom_ds/default/default_palette.dart';

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
              activeTab: _activeTab,
              userAvatar: widget.userAvatar,
              permitDocumentsDisabled: true,
              dashboardDisabled: false,
              digitalMoodBoardsDisabled: true,
              iDesignDisabled: true,
              weDesignDisabled: true,
              myOrderDisabled: true,
              propertyDocumentsDisabled: true,
              floorPlanDisabled: true,
              measurementsDisabled: true,
              questionnaireDisabled: false,
              username: widget.username,
              selectedProject: widget.selectedProject,
              onMoreTap: () async {
                setState(() {
                  _sidebarOpened = !_sidebarOpened;
                });
                debugPrint('onMoreTap');
              },
              onPlusTap: () async {
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
              onDashboardTap: () {
                setState(() {
                  _activeTab = SidebarTabType.dashboard;
                });
                debugPrint('onDashboardTap');
              },
              onDigitalMoodBoardsTap: () {
                setState(() {
                  _activeTab = SidebarTabType.digitalMoodBoards;
                });
                debugPrint('onDigitalMoodBoardsTap');
              },
              onFloorPlanTap: () {
                setState(() {
                  _activeTab = SidebarTabType.floorPlan;
                });
                debugPrint('onFloorPlanTap');
              },
              onIDesignTap: () {
                setState(() {
                  _activeTab = SidebarTabType.iDesign;
                });
                debugPrint('onIDesignTap');
              },
              onMeasurementsTap: () {
                setState(() {
                  _activeTab = SidebarTabType.measurements;
                });
                debugPrint('onMeasurementsTap');
              },
              onMyOrderTap: () {
                setState(() {
                  _activeTab = SidebarTabType.myOrder;
                });
                debugPrint('onMyOrderTap');
              },
              onPermitDocumentsTap: () {
                setState(() {
                  _activeTab = SidebarTabType.permitDocuments;
                });
                debugPrint('onPermitDocumentsTap');
              },
              onPropertyDocumentsTap: () {
                setState(() {
                  _activeTab = SidebarTabType.propertyDocuments;
                });
                debugPrint('onPropertyDocumentsTap');
              },
              onQuestionnaireTap: () {
                setState(() {
                  _activeTab = SidebarTabType.questionnaire;
                });
                debugPrint('onQuestionnaireTap');
              },
              onWeDesignTap: () {
                setState(() {
                  _activeTab = SidebarTabType.weDesign;
                });
                debugPrint('onWeDesignTap');
              },
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
