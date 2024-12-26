import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_colors.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_text_style.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  final String text;
  Color? backgroundColor;
  CustomContainer({
    super.key,
    required this.text,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(7.r),
          ),
          color: backgroundColor ?? AppColors.greyColor),
      child: Align(
        alignment: Alignment.center,
        child: customTextStyle(
          text: text,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
