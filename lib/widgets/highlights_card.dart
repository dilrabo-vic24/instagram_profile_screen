import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_text_style.dart';

class HighlightsCard extends StatelessWidget {
  final String iconUrl;
  final String text;
  const HighlightsCard({
    super.key,
    required this.iconUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(iconUrl),
        ),
        customTextStyle(
          text: text,
          fonstSize: 12.5,
        )
      ],
    );
  }
}
