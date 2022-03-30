import 'package:flutter/material.dart';
import 'package:food_app/shared/constants/app_colors.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.80,
      height: 60,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 15),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        color: AppColors.heading2,
        borderRadius: BorderRadius.all(Radius.circular(31.5)),
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: AppColors.background,
        style: const TextStyle(
          color: AppColors.dark,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: AppColors.dark,
            fontSize: 18,
          ),
          icon: Icon(
            icon,
            color: AppColors.dark,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
