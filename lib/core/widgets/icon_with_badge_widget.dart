import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:assignment/core/util/palette.dart';

class IconWithBadgeWidget extends StatelessWidget {
  const IconWithBadgeWidget({
    required this.badgeActive,
    required this.icon,
    super.key,
  });

  final bool badgeActive;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(icon, height: 26.sp, width: 26.sp),
        badgeActive
            ? Positioned(
              right: 0,
              top: 14,
              child: Stack(
                alignment: Alignment.center, // Centers all children
                children: [
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: Palette.mainDarkColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: Palette.redColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            )
            : SizedBox.shrink(),
      ],
    );
  }
}
