import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/features/auth/ui/profile_screen.dart';
import 'package:hungry/features/card/presentation/cart_screen.dart';
import 'package:hungry/features/home/presentation/screens/home_screen.dart';
import 'package:hungry/features/order/presentation/order_history_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  List<Widget> pageScreens = [
    const HomeScreen(),
    const CartScreen(),
    const OrderHistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: pageScreens,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
        ),
        child: BottomNavigationBar(
          elevation: 0,
            onTap: (index) {
              setState(() => currentIndex = index);
              pageController.jumpToPage(currentIndex);
            },
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            selectedItemColor: AppColors.whiteColor,
            unselectedItemColor: Colors.grey.shade700,

            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Order History'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),

            ]
        ),
      ),
    );
  }
}











