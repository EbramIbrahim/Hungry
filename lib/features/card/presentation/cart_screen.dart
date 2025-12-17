import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';
import 'package:hungry/features/card/presentation/cart_item_widget.dart';
import 'package:hungry/features/product/presentation/screens/product_details_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CartItemWidget(),
                CartItemWidget(),
                CartItemWidget(),
                CartItemWidget(),
                CartItemWidget(),
                const SizedBox(height: 24),
                ProductDetailsCheckoutWidget(),
                const SizedBox(height: 24),
              ]
            ),
          ),
        ),
      ),
    );
  }
}

















