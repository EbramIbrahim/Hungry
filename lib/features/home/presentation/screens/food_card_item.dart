import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/helpers/spacing.dart';
import 'package:hungry/core/widget/custom_text.dart';

class FoodCardItem extends StatelessWidget {
  const FoodCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(AppAssets.burgerImg, width: 80, height: 80),
              ),
              CustomText(
                text: "Cheeseburger",
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              CustomText(
                text: "Wendy's Burger",
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
              verticalSpacing(5),
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    CustomText(
                      text: "4.9",
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
