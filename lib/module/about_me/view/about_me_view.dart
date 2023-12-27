import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../controller/about_me_controller.dart';
import 'package:kris_portfolio/core.dart';
import 'package:get/get.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutMeController>(
      init: AboutMeController(),
      builder: (controller) {
        controller.view = this;

        return Container(
          height: Get.height * 0.9,
          width: Get.width,
          padding: EdgeInsets.only(
            left: Get.width * 0.1,
            right: Get.width * 0.1,
          ),
          color: AppColors.themeColor,
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // -- Photo
              FadeInRight(
                duration: const Duration(milliseconds: 1200),
                child: Image.asset(
                  AppAssets.profile2,
                  width: 340,
                  height: 450,
                ),
              ),

              const SizedBox(
                width: 25.0,
              ),

              // -- About Me
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // - About Me Text
                  FadeInRight(
                    duration: const Duration(milliseconds: 1400),
                    child: RichText(
                      text: TextSpan(
                        text: 'About ',
                        style: AppTextStyles.headingStyle(),
                        children: [
                          TextSpan(
                            text: 'Me',
                            style: AppTextStyles.headingStyle(
                              textColor: AppColors.complimentBgColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 14.0),

                  // - Bio Header
                  Text("Flutter Developer!",
                      style: AppTextStyles.montserratStyle()),
                  const SizedBox(height: 14.0),

                  // - Bio Content
                  SizedBox(
                    width: Get.width * 0.4,
                    child: Text(
                      'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak',
                      style: AppTextStyles.normalStyle(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
