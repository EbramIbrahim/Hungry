import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/constant/app_string.dart';
import 'package:hungry/core/helpers/spacing.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            verticalSpacing(280),
            SvgPicture.asset(AppAssets.hungry),
            Spacer(),
            Image.asset(AppAssets.splashLogo)
          ],
        ),
      ),
    );
  }
}








