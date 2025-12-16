import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/widget/app_rounded_button.dart';
import 'package:hungry/core/widget/custom_text.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Image.asset(AppAssets.productDetailsImg, height: 250),
                Expanded(child: SpicyCustomizationWidget()),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              "Topping",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.brownColor,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ToppingCardWidget(),
                  ToppingCardWidget(),
                  ToppingCardWidget(),
                  ToppingCardWidget(),
                  ToppingCardWidget(),

                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Side options",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.brownColor,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ToppingCardWidget(),
                  ToppingCardWidget(),
                  ToppingCardWidget(),
                  ToppingCardWidget(),
                  ToppingCardWidget(),

                ],
              ),
            ),
            Spacer(),
            ProductDetailsCheckoutWidget(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class SpicyCustomizationWidget extends StatefulWidget {
  const SpicyCustomizationWidget({super.key});

  @override
  State<SpicyCustomizationWidget> createState() =>
      _SpicyCustomizationWidgetState();
}
class _SpicyCustomizationWidgetState extends State<SpicyCustomizationWidget> {
  double spicyValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CustomText(
            text: "Customize Your Burger to Your Tastes. Ultimate Experience",
            size: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        SliderTheme(
          data: SliderThemeData(
            thumbColor: AppColors.primaryColor,
            activeTrackColor: AppColors.primaryColor,
          ),
          child: Column(
            children: [
              Slider(
                max: 100,
                value: spicyValue,
                onChanged: (val) {
                  spicyValue = val;
                  setState(() {});
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("🥶", style: TextStyle(fontSize: 16)),
                    Text("🌶️", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ToppingCardWidget extends StatelessWidget {
  const ToppingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: 120,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: Colors.transparent),
        ),
        child: Stack(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.brownColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Text(
                        "Tomato",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red
                        ),
                        child: Icon(Icons.add, color: AppColors.whiteColor)
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(12),
              color: Colors.transparent,
              child: Container(
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.whiteColor,
                ),
                child: Center(
                  child: Image.asset(AppAssets.tomatoImg),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailsCheckoutWidget extends StatelessWidget {
  const ProductDetailsCheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.brownColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          AppRoundedButton(text: 'Add To Cart', onPressed: (){})
        ],
      ),
    );
  }
}










