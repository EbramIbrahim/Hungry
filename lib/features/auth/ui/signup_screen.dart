import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/helpers/spacing.dart';
import 'package:hungry/core/widget/app_rounded_button.dart';
import 'package:hungry/core/widget/custom_text.dart';
import 'package:hungry/core/widget/custom_text_field.dart';

import '../../../core/constant/app_assets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
                hintText: 'Name',
                controller: nameController,
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Please enter your Name';
                  } else {
                    return null;
                  }
                },
              ),
              verticalSpacing(20),
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
                    return 'Please enter your password';
                  } else {
                    return null;
                  }
                },
              ),
              verticalSpacing(20),
              PrimaryTextFieldWidget(
                hintText: 'Confirm your password',
                isPassword: true,
                controller: confirmPasswordController,
                validator: (value) {
                  if(value!.isEmpty || value != passwordController.text) {
                    return 'Please enter your password';
                  } else {
                    return null;
                  }
                },
              ),
              verticalSpacing(20),
              AppRoundedButton(
                height: 60,
                text: 'SignUp',
                onPressed: () {
                  if(formKey.currentState!.validate()) {
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
