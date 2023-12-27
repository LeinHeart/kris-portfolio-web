import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../controller/my_projects_controller.dart';
import 'package:kris_portfolio/core.dart';
import 'package:get/get.dart';

class MyProjectsView extends StatefulWidget {
  const MyProjectsView({Key? key}) : super(key: key);

  @override
  State<MyProjectsView> createState() => _MyProjectsViewState();
}

class _MyProjectsViewState extends State<MyProjectsView> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  var hoveredIndex = 99;

  List<String> projectImages = [
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work1,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.9,
      width: Get.width,
      color: AppColors.themeColor,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: Get.width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // -- Latest Project Text
          FadeInDown(
            duration: const Duration(milliseconds: 1400),
            child: RichText(
              text: TextSpan(
                text: 'Latest ',
                style: AppTextStyles.headingStyle(),
                children: [
                  TextSpan(
                    text: 'Projects',
                    style: AppTextStyles.headingStyle(
                      textColor: AppColors.complimentBgColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40.0),

          // -- Grid View Project
          GridView.builder(
            itemCount: projectImages.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 260,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            itemBuilder: (context, index) {
              var image = projectImages[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      } else {
                        hoveredIndex = 99;
                      }
                    });
                  },
                  child: Stack(
                    children: [
                      // Background Project Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                      ),

                      // Overlay
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          transform:
                              index == hoveredIndex ? onHoverEffect : null,
                          duration: const Duration(seconds: 1),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.hoverBtnColor.withOpacity(1.0),
                                AppColors.hoverBtnColor.withOpacity(0.9),
                                AppColors.hoverBtnColor.withOpacity(0.8),
                                AppColors.hoverBtnColor.withOpacity(0.6),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Etalaseku",
                                style: AppTextStyles.montserratStyle(
                                  textColor: Colors.black87,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Online e-commerce for pre-loved items",
                                style: AppTextStyles.normalStyle(
                                  textColor: Colors.black87,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
