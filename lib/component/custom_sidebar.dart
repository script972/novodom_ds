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
    required this.onChatTap,
    required this.onLegalTap,
    required this.onCardTap,
    required this.onNotebookTap,
  });

  final bool sidebarOpened;
  final String username;
  final String? userAvatar;
  final String? selectedProject;
  final Function() onProjectTap;
  final Future Function() onPlusTap;
  final Function() onChatTap;
  final Function() onLegalTap;
  final Function() onCardTap;
  final Function() onNotebookTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: AnimatedContainer(
        width: sidebarOpened ? 220 : 52,
        duration: const Duration(
          milliseconds: 100,
        ),
        child: Column(
          children: [
            const Logo(),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                UserAvatar(
                  avatarUrl: userAvatar,
                ),
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
                              color: NovodomTheme(context).colorTheme.username,
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
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.plusCircle,
                  onTap: onPlusTap,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              spacing: 4,
              children: [
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.chat,
                  onTap: onChatTap,
                ),
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.legal,
                  onTap: onLegalTap,
                ),
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.card,
                  onTap: onCardTap,
                ),
                SquareThemedButton(
                  active: false,
                  duotoneIcon:
                      NovodomTheme(context).assetsTheme.duotoneIcons.notebookSquare,
                  onTap: onNotebookTap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
