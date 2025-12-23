import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/widget/app_rounded_button.dart';
import 'package:hungry/core/widget/custom_text_field.dart';
import 'package:hungry/core/widget/payment_card_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 5, color: AppColors.primaryColor),
                  ),
                  child: Image.asset(
                    AppAssets.sonicImg,
                    fit: BoxFit.contain,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              PrimaryTextFieldWidget(
                borderColor: AppColors.primaryColor,
                fillColor: AppColors.whiteColor,
                hintText: "Name",
                hintColor: AppColors.primaryColor,
              ),
              const SizedBox(height: 25),
              PrimaryTextFieldWidget(
                borderColor: AppColors.primaryColor,
                fillColor: AppColors.whiteColor,
                hintText: "Email",
                hintColor: AppColors.primaryColor,
              ),
              const SizedBox(height: 25),
              PrimaryTextFieldWidget(
                borderColor: AppColors.primaryColor,
                fillColor: AppColors.whiteColor,
                hintText: "Delivery Address",
                hintColor: AppColors.primaryColor,
              ),
              const SizedBox(height: 25),
              PrimaryTextFieldWidget(
                borderColor: AppColors.primaryColor,
                fillColor: AppColors.whiteColor,
                hintText: "Password",
                hintColor: AppColors.primaryColor,
              ),
              const SizedBox(height: 25),
              Divider(thickness: 2, color: AppColors.primaryColor),
              const SizedBox(height: 25),
              PaymentCardWidget(),
              Spacer(),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: AppRoundedButton(
                        text: "Edit Profile",
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: AppRoundedButton(text: "Log out", onPressed: () {}),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
