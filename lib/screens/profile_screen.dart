import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_colors.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_icons.dart';
import 'package:instagram_profile_lifecycle_devtools/utils/app_images.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_appbar.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_container.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/custom_text_style.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/highlights_card.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/information.dart';
import 'package:instagram_profile_lifecycle_devtools/widgets/related_person_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const CustomAppBar(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppImages.profileImage,
                    width: 90.w,
                    height: 90.h,
                  ),
                  const Information(number: "6956", text: "Posts"),
                  const Information(number: "27.7M", text: "Followers"),
                  const Information(number: "219", text: "Following"),
                ],
              ),
              SizedBox(height: 10.h),
              customTextStyle(
                text: "Codefive",
                fontWeight: FontWeight.w600,
              ),
              customTextStyle(
                text: "Agência",
                fontWeight: FontWeight.w500,
                textColor: AppColors.greyColor,
              ),
              customTextStyle(
                text: "O seu site de sonhos, está no sitio certo. 💻",
                fontWeight: FontWeight.w600,
              ),
              customTextStyle(
                text: "codefive.pt",
                fontWeight: FontWeight.w600,
                textColor: AppColors.blueColor,
              ),
              SizedBox(height: 5.h),
              const RelatedPersonsWidget(),
              SizedBox(
                height: 40.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomContainer(
                      text: "Seguir",
                      backgroundColor: AppColors.blueColor,
                    ),
                    CustomContainer(text: "Mensagem"),
                    CustomContainer(text: "Contactar"),
                    Container(
                      height: 10.h,
                      width: 65.w,
                      margin: EdgeInsets.all(5.w),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.r),
                          ),
                          color: AppColors.greyColor),
                      child: const Center(
                          child: Icon(
                        Icons.person_add_outlined,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HighlightsCard(
                      iconUrl: AppIcons.storyIcon1,
                      text: "Design Tips",
                    ),
                    HighlightsCard(
                      iconUrl: AppIcons.storyIcon2,
                      text: "Portfolio",
                    ),
                    HighlightsCard(
                      iconUrl: AppIcons.storyIcon3,
                      text: "Resources",
                    ),
                    HighlightsCard(
                      iconUrl: AppIcons.storyIcon4,
                      text: "UI Basics",
                    ),
                    HighlightsCard(
                      iconUrl: AppIcons.storyIcon5,
                      text: "Web Design",
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(AppIcons.postsIcon),
                      Image.asset(AppIcons.reelsIcon),
                      Image.asset(AppIcons.profileMediaIcon),
                    ],
                  ),
                ],
              ),
              Divider(
                color: AppColors.blackColor,
                thickness: 1.h,
                endIndent: 220.w,
                height: 1.h,
              ),
              SizedBox(
                height: 890,
                child: GridView.builder(
                  padding: EdgeInsets.only(top: 3.h),
                  itemCount: 24,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Image.asset(
                      images[index + 1],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
