import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kris_portfolio/core.dart';
import 'package:get/get.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.1,
        right: Get.width * 0.1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // -- Text Header
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // - Intro
              FadeInDown(
                child: Text(
                  "Hello There!",
                  style: AppTextStyles.montserratStyle(),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              // - Name
              FadeInRight(
                child: Text(
                  "I'm Kristopher Chayadi!",
                  style: AppTextStyles.headingStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              // - Jobs
              FadeInLeft(
                child: Row(
                  children: [
                    Text(
                      "And I'm ",
                      style: AppTextStyles.montserratStyle(),
                    ),
                    AnimatedTextKit(
                      pause: const Duration(milliseconds: 1000),
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          "a Flutter Developer",
                          textStyle: AppTextStyles.montserratStyle(
                            textColor: AppColors.complimentBgColor,
                          ),
                        ),
                        TyperAnimatedText(
                          "an API Developer",
                          textStyle: AppTextStyles.montserratStyle(
                            textColor: AppColors.complimentBgColor,
                          ),
                        ),
                        TyperAnimatedText(
                          "learning UI/UX Design",
                          textStyle: AppTextStyles.montserratStyle(
                            textColor: AppColors.complimentBgColor,
                          ),
                        ),
                        TyperAnimatedText(
                          "achieving World Class Developer",
                          textStyle: AppTextStyles.montserratStyle(
                            textColor: AppColors.complimentBgColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              // - Short Bio
              FadeInDown(
                child: SizedBox(
                  width: Get.width * 0.4,
                  child: Text(
                    'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak',
                    style: AppTextStyles.normalStyle(),
                  ),
                ),
              ),
              const SizedBox(
                height: 22.0,
              ),

              // - Social Media Button
              FadeInUp(
                child: Row(
                  children: [
                    SocialButton(
                      assetImage: AppAssets.linkedIn,
                    ),
                    SocialButton(
                      assetImage: AppAssets.git,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 22.0,
              ),
              // - Download CV Button
              FadeInUp(
                child: GeneralButton(
                  buttonText: "Download CV",
                  onTap: () {},
                ),
              ),
            ],
          ),
          const SizedBox(width: 20.0),
          // -- Profile Picture
          // const ProfileAnimation(),
          Image.asset(
            AppAssets.profile1,
            width: 340,
            height: 450,
          ),
        ],
      ),
    );
  }
}
