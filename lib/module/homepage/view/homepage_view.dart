import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kris_portfolio/global/widgets/profile_animation.dart';
import '../../../global/constraints/app_assets.dart';
import '../../../global/constraints/app_colors.dart';
import '../../../global/constraints/app_text_styles.dart';
import '../../../global/widgets/general_button.dart';
import '../../../global/widgets/social_button.dart';
import '../controller/homepage_controller.dart';
import 'package:kris_portfolio/core.dart';
import 'package:get/get.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      init: HomepageController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: AppColors.bgColor,
          appBar: AppBar(
            backgroundColor: AppColors.bgColor,
            elevation: 0,
            toolbarHeight: 90,
            titleSpacing: 100,
            title: Row(
              children: [
                const Text("Portfolio"),
                const Spacer(),
                Text("Home", style: AppTextStyles.headerTextStyle()),
                const SizedBox(width: 30.0),
                Text("About", style: AppTextStyles.headerTextStyle()),
                const SizedBox(width: 30.0),
                Text("Services", style: AppTextStyles.headerTextStyle()),
                const SizedBox(width: 30.0),
                Text("Portfolio", style: AppTextStyles.headerTextStyle()),
                const SizedBox(width: 30.0),
                Text("Contact", style: AppTextStyles.headerTextStyle()),
              ],
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              top: Get.height * 0.1,
              // left: Get.width * 0.1,
              // right: Get.width * 0.1,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---- Header
                // --- Text Header & Photo
                HeaderView(),
                SizedBox(height: 250.0),

                // ---- About Me
                AboutMeView(),

                // ---- My Services
                MyServiceView(),

                // ---- My Projects
                MyProjectsView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
