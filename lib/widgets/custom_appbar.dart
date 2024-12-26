import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_colors.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_back_ios_new),
        Row(
          children: [
            customTextStyle(
              text: "Codefive",
              fontWeight: FontWeight.w700,
              fonstSize: 16.sp,
            ),
            Icon(
              Icons.verified,
              color: AppColors.blueColor,
              size: 16.sp,
            )
          ],
        ),
        const Row(
          children: [
            Icon(Icons.notifications_outlined),
            Icon(Icons.more_horiz)
          ],
        )
      ],
    );
  }
}