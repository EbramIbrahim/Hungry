import 'package:flutter/material.dart';
import 'package:hungry/core/constant/app_colors.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      elevation: 3,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
