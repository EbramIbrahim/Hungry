import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/helpers/spacing.dart';
import 'package:hungry/core/widget/app_rounded_button.dart';
import 'package:hungry/core/widget/custom_text.dart';
import 'package:hungry/core/widget/custom_text_field.dart';

import '../../../core/constant/app_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              verticalSpacing(100),
              SvgPicture.asset(AppAssets.hungry),
              verticalSpacing(20),
              CustomText(
                text: 'Welcome back, Discover The Fast Food',
                size: 16,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w400,
              ),
              verticalSpacing(40),
              PrimaryTextFieldWidget(
                hintText: 'Email',
                controller: emailController,
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else {
                    return null;
                  }
                },
              ),
              verticalSpacing(20),
              PrimaryTextFieldWidget(
                hintText: 'Password',
                isPassword: true,
                controller: passwordController,
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else {
                    return null;
                  }
                },
              ),
              verticalSpacing(20),
              AppRoundedButton(
                height: 60,
                text: 'Login',
                onPressed: () {
                  if(formKey.currentState!.validate()) {
                    print("Successful login");
                  }
                },
                width: 391,
                backgroundColor: AppColors.whiteColor,
                textColor: AppColors.primaryColor,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
