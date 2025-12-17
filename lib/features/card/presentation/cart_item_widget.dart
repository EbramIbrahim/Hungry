import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/widget/app_rounded_button.dart';
import 'package:hungry/core/widget/custom_text.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [FoodDetails(), Spacer(), CartCounterController()],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 20,
                offset: Offset(0, 20),
              ),
            ],
          ),
          child: Image.asset(
            AppAssets.burgerImg,
            width: 100,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 12),
        CustomText(
          text: "Hamburger\nVeggie Burger",
          size: 16,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}

class CartCounterController extends StatelessWidget {
  const CartCounterController({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            incrementDecrementWidget(
              icon: Icon(Icons.remove, color: AppColors.whiteColor),
              onPressed: () {},
            ),
            const SizedBox(width: 12),
            CustomText(
              text: "2",
              size: 16,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(width: 12),
            incrementDecrementWidget(
              icon: Icon(Icons.add, color: AppColors.whiteColor),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 40),
        AppRoundedButton(
          width: 154,
          height: 43,
          text: "Remove",
          onPressed: () {},
        ),
      ],
    );
  }
}

Widget incrementDecrementWidget({
  required Widget icon,
  required VoidCallback? onPressed,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.primaryColor,
    ),
    child: Center(
      child: IconButton(onPressed: onPressed, icon: icon),
    ),
  );
}
