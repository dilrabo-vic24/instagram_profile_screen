import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_text_style.dart';

class Information extends StatelessWidget {
  final String number;
  final String text;
  const Information({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customTextStyle(text: number, fonstSize: 16.sp, fontWeight: FontWeight.w600),
        customTextStyle(text: text, fonstSize: 13.sp, fontWeight: FontWeight.w500),
      ],
    );
  }
}