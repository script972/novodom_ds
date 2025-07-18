import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novodom_ds/index.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({
    super.key,
    required this.sidebarOpened,
    required this.username,
    required this.userAvatar,
    required this.userEmail,
    required this.onProjectTap,
    required this.onProjectsTap,
    required this.onMoreTap,
    required this.tabs,
    required this.rowButtons,
    required this.onUserTap,
  });

  final bool sidebarOpened;
  final String username;
  final String? userAvatar;
  final String? userEmail;
  final Function() onProjectTap;
  final Future Function() onProjectsTap;
  final Future Function() onMoreTap;
  final Function() onUserTap;
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
                      InkWell(
                        onTap: onUserTap,
                        child: UserAvatar(
                          avatarUrl: userAvatar,
                        ),
                      ),
                      if (sidebarOpened) ...[
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: onUserTap,
                                child: Text(
                                  username,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: NovodomTheme(context)
                                      .textTheme
                                      .p1Semibold
                                      .copyWith(
                                        color: NovodomTheme(context)
                                            .colorTheme
                                            .username,
                                      ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              InkWell(
                                onTap: onProjectTap,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        userEmail ?? '',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: NovodomTheme(context)
                                            .textTheme
                                            .linkS
                                            .copyWith(
                                              color: NovodomTheme(context)
                                                  .colorTheme
                                                  .projectTextIcon,
                                            ),
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
                              .logOut,
                          onTap: onProjectsTap,
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
                      if (sidebarOpened) ...[...rowButtons] else
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
