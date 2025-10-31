import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/widget/custom_text.dart';

class AppRoundedButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() onPressed;

  const AppRoundedButton({
    super.key,
    this.width,
    this.height,
    this.radius,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 20),
        ),
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        fixedSize: Size(width ?? 200, height ?? 70),
      ),
      onPressed: () => onPressed,
      child: CustomText(
        text: text,
        color: textColor ?? AppColors.whiteColor,
        fontWeight: FontWeight.w400,
        size: 18,
      ),
    );
  }
}
