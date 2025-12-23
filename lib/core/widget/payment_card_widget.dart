import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/widget/custom_text.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          children: [
            Image.asset(AppAssets.visaImg, width: 80, height: 30,),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Debit card",
                  size: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: "3566 **** **** 0505",
                  size: 14,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
