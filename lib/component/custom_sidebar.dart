import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novodom_ds/index.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({
    super.key,
    required this.sidebarOpened,
    required this.username,
    required this.userAvatar,
    required this.selectedProject,
    required this.onProjectTap,
    required this.onPlusTap,
    required this.onMoreTap,
    required this.tabs,
    required this.rowButtons,
  });

  final bool sidebarOpened;
  final String username;
  final String? userAvatar;
  final String? selectedProject;
  final Function() onProjectTap;
  final Future Function() onPlusTap;
  final Future Function() onMoreTap;
  final List<SidebarTab> tabs; 
  final List<SquareThemedButton> rowButtons; 

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
                       ...rowButtons
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
                ...tabs,
               
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
