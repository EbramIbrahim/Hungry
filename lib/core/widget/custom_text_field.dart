import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';

class PrimaryTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final double? width;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final bool? isPassword;
  final Color? fillColor;
  final Color? borderColor;
  final Color? hintColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const PrimaryTextFieldWidget({
    super.key,
    this.hintText,
    this.width,
    this.suffixIcon,
    this.preffixIcon,
    this.isPassword,
    this.controller,
    this.validator,
    this.fillColor,
    this.borderColor,
    this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 391,
      child: TextFormField(
        style: TextStyle(color: AppColors.whiteColor),
        controller: controller,
        validator: validator,
        autofocus: false,
        cursorColor: AppColors.whiteColor,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(color: hintColor ?? AppColors.whiteColor),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor ?? AppColors.whiteColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor ?? AppColors.whiteColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          filled: true,
          fillColor: fillColor ?? AppColors.primaryColor,
          suffixIcon: suffixIcon,
          prefixIcon: preffixIcon,
        ),
      ),
    );
  }
}