import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_colors.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_icons.dart';

class RelatedPersonsWidget extends StatelessWidget {
  const RelatedPersonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 40.w,
                    child: Image.asset(AppIcons.person3),
                  ),
                  Positioned(
                    left: 20.w,
                    child: Image.asset(AppIcons.person2),
                  ),
                  Positioned(
                    left: 0.w,
                    child: Image.asset(AppIcons.person1),
                  ),
                  Positioned(
                    left: 80.w,
                    child: SizedBox(
                      width: 280.w,
                      child: RichText(
                        text: TextSpan(
                          text: "Seguido por ",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.blackColor,
                          ),
                          children: const [
                            TextSpan(
                              text:
                                  "joaocorreia09, vanda.carvalho e16 outros amigos",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
