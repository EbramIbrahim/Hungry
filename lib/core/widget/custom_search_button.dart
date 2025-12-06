import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/widget/custom_text.dart';

class CustomSearchButton extends StatefulWidget {
  final double? width;
  final double? height;
  final double? radius;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() onPressed;
  final bool initialChecked;

  const CustomSearchButton({
    super.key,
    this.width,
    this.height,
    this.radius,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.initialChecked = false,
  });

  @override
  State<CustomSearchButton> createState() => _AppRoundedButtonState();
}

class _AppRoundedButtonState extends State<CustomSearchButton> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 20),
        ),
        backgroundColor: isChecked
            ? AppColors.primaryColor
            : widget.backgroundColor ?? Colors.white, // Different color when not checked
        fixedSize: Size(widget.width ?? 200, widget.height ?? 70),
      ),
      onPressed: () {
        setState(() {
          isChecked = !isChecked; // Toggle the state
        });
        widget.onPressed(); // Call the original callback
      },
      child: CustomText(
        text: widget.text,
        color: isChecked  ? AppColors.whiteColor : Colors.black ?? AppColors.whiteColor,
        fontWeight: FontWeight.w400,
        size: 18,
      ),
    );
  }
}