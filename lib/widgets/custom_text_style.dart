import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_colors.dart';

Widget customTextStyle({
  required String text,
  double? fonstSize,
  FontWeight? fontWeight,
  Color? textColor,
}) {
  return Text(
    text,
    style: TextStyle(
      color: textColor ?? AppColors.blackColor,
      fontSize: fonstSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.w400,
    ),
  );
}
