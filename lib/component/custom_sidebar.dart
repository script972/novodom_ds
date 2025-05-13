import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novodom_ds/index.dart';

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

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({
    super.key,
    required this.sidebarOpened,
    required this.activeTab,
    required this.username,
    required this.userAvatar,
    required this.selectedProject,
    required this.onProjectTap,
    required this.onPlusTap,
    required this.onChatTap,
    required this.onLegalTap,
    required this.onCardTap,
    required this.onNotebookTap,
    required this.onMoreTap,
    required this.onPermitDocumentsTap,
    required this.onMyOrderTap,
    required this.onWeDesignTap,
    required this.onDigitalMoodBoardsTap,
    required this.onFloorPlanTap,
    required this.onMeasurementsTap,
    required this.onPropertyDocumentsTap,
    required this.onIDesignTap,
    required this.onQuestionnaireTap,
    required this.onDashboardTap,
    this.permitDocumentsDisabled = false,
    this.myOrderDisabled = false,
    this.weDesignDisabled = false,
    this.digitalMoodBoardsDisabled = false,
    this.floorPlanDisabled = false,
    this.measurementsDisabled = false,
    this.propertyDocumentsDisabled = false,
    this.iDesignDisabled = false,
    this.questionnaireDisabled = false,
    this.dashboardDisabled = false,
  });

  final bool sidebarOpened;
  final SidebarTabType activeTab;
  final String username;
  final String? userAvatar;
  final String? selectedProject;
  final Function() onProjectTap;
  final Future Function() onPlusTap;
  final Function() onChatTap;
  final Function() onLegalTap;
  final Function() onCardTap;
  final Function() onNotebookTap;
  final Function() onMoreTap;
  final Function() onPermitDocumentsTap;
  final Function() onMyOrderTap;
  final Function() onWeDesignTap;
  final Function() onDigitalMoodBoardsTap;
  final Function() onFloorPlanTap;
  final Function() onMeasurementsTap;
  final Function() onPropertyDocumentsTap;
  final Function() onIDesignTap;
  final Function() onQuestionnaireTap;
  final Function() onDashboardTap;
  final bool permitDocumentsDisabled;
  final bool myOrderDisabled;
  final bool weDesignDisabled;
  final bool digitalMoodBoardsDisabled;
  final bool floorPlanDisabled;
  final bool measurementsDisabled;
  final bool propertyDocumentsDisabled;
  final bool iDesignDisabled;
  final bool questionnaireDisabled;
  final bool dashboardDisabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AnimatedContainer(
        width: sidebarOpened ? 220 : 52,
        duration: NovodomTheme(context).durationTheme.animationDuration,
        child: Theme(
          data: Theme.of(context).copyWith(
            scrollbarTheme: ScrollbarThemeData(
              interactive: false,
              thickness: WidgetStateProperty.all(2),
              crossAxisMargin: -20,
              mainAxisMargin: 20,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Logo(
                  mini: !sidebarOpened,
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      UserAvatar(
                        avatarUrl: userAvatar,
                      ),
                      if (sidebarOpened) ...[
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                username,
                                style: NovodomTheme(context)
                                    .textTheme
                                    .p1Semibold
                                    .copyWith(
                                      color: NovodomTheme(context)
                                          .colorTheme
                                          .username,
                                    ),
                              ),
                              InkWell(
                                onTap: onProjectTap,
                                child: Row(
                                  children: [
                                    Text(
                                      'Project $selectedProject',
                                      style: NovodomTheme(context)
                                          .textTheme
                                          .linkS
                                          .copyWith(
                                            color: NovodomTheme(context)
                                                .colorTheme
                                                .projectTextIcon,
                                          ),
                                    ),
                                    SvgPicture.asset(
                                      NovodomTheme(context)
                                          .assetsTheme
                                          .icons24
                                          .arrowRight,
                                      colorFilter: ColorFilter.mode(
                                        NovodomTheme(context)
                                            .colorTheme
                                            .projectTextIcon,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomButton(
                          type: ButtonType.tertiaryBlack,
                          size: ButtonSize.m,
                          duotoneIcon: NovodomTheme(context)
                              .assetsTheme
                              .duotoneIcons
                              .plusCircle,
                          onTap: onPlusTap,
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 4,
                    children: [
                      if (sidebarOpened) ...[
                        SquareThemedButton(
                          active: false,
                          duotoneIcon: NovodomTheme(context)
                              .assetsTheme
                              .duotoneIcons
                              .chat,
                          onTap: onChatTap,
                        ),
                        SquareThemedButton(
                          active: false,
                          duotoneIcon: NovodomTheme(context)
                              .assetsTheme
                              .duotoneIcons
                              .legal,
                          onTap: onLegalTap,
                        ),
                        SquareThemedButton(
                          active: false,
                          duotoneIcon: NovodomTheme(context)
                              .assetsTheme
                              .duotoneIcons
                              .card,
                          onTap: onCardTap,
                        ),
                        SquareThemedButton(
                          active: false,
                          duotoneIcon: NovodomTheme(context)
                              .assetsTheme
                              .duotoneIcons
                              .notebookSquare,
                          onTap: onNotebookTap,
                        ),
                      ] else
                        SquareThemedButton(
                          active: false,
                          duotoneIcon: NovodomTheme(context)
                              .assetsTheme
                              .duotoneIcons
                              .more,
                          onTap: onMoreTap,
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SidebarTab(
                  text: 'Project Dashboard',
                  active: activeTab == SidebarTabType.dashboard,
                  disabled: dashboardDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon: NovodomTheme(context)
                      .assetsTheme
                      .duotoneIcons
                      .elementPlus,
                  onTap: onDashboardTap,
                ),
                SidebarTab(
                  text: 'Questionnaire',
                  active: activeTab == SidebarTabType.questionnaire,
                  disabled: questionnaireDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.question,
                  onTap: onQuestionnaireTap,
                ),
                SidebarTab(
                  text: 'iDesign',
                  active: activeTab == SidebarTabType.iDesign,
                  disabled: iDesignDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.penTool,
                  onTap: onIDesignTap,
                ),
                SidebarTab(
                  text: 'Property Documents',
                  active: activeTab == SidebarTabType.propertyDocuments,
                  disabled: propertyDocumentsDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.document,
                  onTap: onPropertyDocumentsTap,
                ),
                SidebarTab(
                  text: 'Measurements',
                  active: activeTab == SidebarTabType.measurements,
                  disabled: measurementsDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.ruler,
                  onTap: onMeasurementsTap,
                ),
                SidebarTab(
                  text: 'Floor Plan',
                  active: activeTab == SidebarTabType.floorPlan,
                  disabled: floorPlanDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.layers,
                  onTap: onFloorPlanTap,
                ),
                SidebarTab(
                  text: 'Digital Mood Boards',
                  active: activeTab == SidebarTabType.digitalMoodBoards,
                  disabled: digitalMoodBoardsDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.pallete,
                  onTap: onDigitalMoodBoardsTap,
                ),
                SidebarTab(
                  text: 'weDesign',
                  active: activeTab == SidebarTabType.weDesign,
                  disabled: weDesignDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.carousel,
                  onTap: onWeDesignTap,
                ),
                SidebarTab(
                  text: 'My Order',
                  active: activeTab == SidebarTabType.myOrder,
                  disabled: myOrderDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.clipboard,
                  onTap: onMyOrderTap,
                ),
                SidebarTab(
                  text: 'Permit Documents',
                  active: activeTab == SidebarTabType.permitDocuments,
                  disabled: permitDocumentsDisabled,
                  mini: !sidebarOpened,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.signature,
                  onTap: onPermitDocumentsTap,
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
