import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DuotoneIcon extends StatelessWidget {
  const DuotoneIcon({
    super.key,
    required this.duotoneIcon,
    this.iconBlueColor,
    this.iconBlackColor,
    this.height,
    this.changeOrder = false,
  });

  final String duotoneIcon;
  final Color? iconBlueColor;
  final Color? iconBlackColor;
  final double? height;
  final bool changeOrder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (changeOrder) ...[
            SvgPicture.asset(
              '$duotoneIcon/black.svg',
              colorFilter: iconBlackColor == null
                  ? null
                  : ColorFilter.mode(
                      iconBlackColor!,
                      BlendMode.srcIn,
                    ),
            ),
            SvgPicture.asset(
              '$duotoneIcon/blue.svg',
              colorFilter: iconBlueColor == null
                  ? null
                  : ColorFilter.mode(
                      iconBlueColor!,
                      BlendMode.srcIn,
                    ),
            ),
          ] else ...[
            SvgPicture.asset(
              '$duotoneIcon/blue.svg',
              colorFilter: iconBlueColor == null
                  ? null
                  : ColorFilter.mode(
                      iconBlueColor!,
                      BlendMode.srcIn,
                    ),
            ),
            SvgPicture.asset(
              '$duotoneIcon/black.svg',
              colorFilter: iconBlackColor == null
                  ? null
                  : ColorFilter.mode(
                      iconBlackColor!,
                      BlendMode.srcIn,
                    ),
            ),
          ],
        ],
      ),
    );
  }
}
