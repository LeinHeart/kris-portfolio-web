import 'package:flutter/material.dart';

import '../constraints/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.assetImage,
  });

  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(200),
        child: CircleAvatar(
          maxRadius: 20,
          backgroundColor: AppColors.themeColor,
          child: CircleAvatar(
            maxRadius: 18,
            backgroundColor: AppColors.bgColor,
            child: Image.asset(
              assetImage,
              width: 20,
              height: 24,
              color: AppColors.themeColor,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
