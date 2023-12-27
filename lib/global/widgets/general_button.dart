import 'package:flutter/material.dart';

import '../constraints/app_colors.dart';
import '../constraints/app_text_styles.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    super.key,
    required this.buttonText,
    this.onTap,
  });

  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: AppColors.hoverBtnColor,
      color: AppColors.themeColor,
      elevation: 6,
      onPressed: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      height: 55,
      child: Text(
        buttonText,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}
