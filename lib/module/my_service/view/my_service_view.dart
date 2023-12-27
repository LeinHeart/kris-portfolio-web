import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../controller/my_service_controller.dart';
import 'package:kris_portfolio/core.dart';
import 'package:get/get.dart';

class MyServiceView extends StatefulWidget {
  const MyServiceView({Key? key}) : super(key: key);

  @override
  State<MyServiceView> createState() => _MyServiceViewState();
}

class _MyServiceViewState extends State<MyServiceView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.9,
      width: Get.width,
      padding: EdgeInsets.only(
        left: Get.width * 0.1,
        right: Get.width * 0.1,
      ),
      color: AppColors.bgColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // -- My Services Text
          FadeInDown(
            duration: const Duration(milliseconds: 1400),
            child: RichText(
              text: TextSpan(
                text: 'My ',
                style: AppTextStyles.headingStyle(),
                children: [
                  TextSpan(
                    text: 'Services',
                    style: AppTextStyles.headingStyle(
                      textColor: AppColors.complimentBgColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40.0),

          // -- Row of Services Container
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ServiceContainer(
                serviceName: 'Mobile Apps Development\nWith Flutter',
                serviceDetail:
                    'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak',
                icon: AppAssets.code,
              ),
              SizedBox(
                width: 20.0,
              ),
              ServiceContainer(
                serviceName: 'Mobile Apps Development',
                serviceDetail:
                    'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak',
                icon: AppAssets.code,
              ),
              SizedBox(
                width: 20.0,
              ),
              ServiceContainer(
                serviceName: 'Mobile Apps Development',
                serviceDetail:
                    'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak',
                icon: AppAssets.code,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    super.key,
    required this.serviceName,
    required this.serviceDetail,
    required this.icon,
  });

  final String serviceName, serviceDetail, icon;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: 380,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      duration: const Duration(milliseconds: 600),
      decoration: BoxDecoration(
          color: AppColors.hoverBtnColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              spreadRadius: 4.0,
              blurRadius: 4.5,
              offset: Offset(3.0, 4.5),
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            icon,
            width: 50,
            height: 50,
            color: AppColors.bgColor,
          ),
          const SizedBox(height: 20.0),
          Text(
            serviceName,
            style: AppTextStyles.montserratStyle(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          Text(
            serviceDetail,
            style: AppTextStyles.normalStyle(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
