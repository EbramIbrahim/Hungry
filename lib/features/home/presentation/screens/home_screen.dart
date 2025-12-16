import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/core/constant/app_assets.dart';
import 'package:hungry/core/helpers/spacing.dart';

import 'package:hungry/core/widget/custom_text.dart';
import 'package:hungry/core/widget/search_field.dart';
import 'package:hungry/features/home/presentation/screens/food_card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    verticalSpacing(40),
                    UserDataHeaderSection(username: 'Hello, Abram Ibrahim'),
                    verticalSpacing(20),
                    SearchField(controller: TextEditingController()),
                    verticalSpacing(20),
                    HorizontalCategoriesList(
                      categories: ["Pizza", "Burger", "Fries", "Salad"],
                    ),
                    verticalSpacing(20),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(childCount: 10, (
                  context,
                  index,
                ) {
                  return FoodCardItem();
                }),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalCategoriesList extends StatefulWidget {
  final List<String> categories;

  const HorizontalCategoriesList({super.key, required this.categories});

  @override
  State<HorizontalCategoriesList> createState() =>
      _HorizontalCategoriesListState();
}

class _HorizontalCategoriesListState extends State<HorizontalCategoriesList> {
  ValueNotifier<int?> currentIndex = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.categories.length, (index) {
          return GestureDetector(
            onTap: () {
              if (currentIndex.value == index) {
                setState(() {
                  currentIndex.value = null;
                });
              } else {
                setState(() {
                  currentIndex.value = index;
                });
              }
            },
            child: Container(
              width: 150,
              height: 50,
              margin: EdgeInsets.only(right: 10, bottom: 8),
              decoration: BoxDecoration(
                color: currentIndex.value == index
                    ? AppColors.primaryColor
                    : AppColors.categoryCardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: CustomText(
                  text: widget.categories[index],
                  size: 16,
                  color: currentIndex.value == index
                      ? AppColors.whiteColor
                      : Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class UserDataHeaderSection extends StatelessWidget {
  final String username;

  const UserDataHeaderSection({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              width: 30,
              height: 30,
              AppAssets.hungry,
              color: AppColors.primaryColor,
            ),
            verticalSpacing(5),
            CustomText(
              text: username,
              size: 24,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),

        Container(
          decoration: BoxDecoration(),
          child: Image.asset(AppAssets.sonicImg, fit: BoxFit.fill),
        ),
      ],
    );
  }
}
