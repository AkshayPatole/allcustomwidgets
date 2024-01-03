import 'package:flutter/material.dart';
import 'package:onlycustomproject/constant/app_colors.dart';

//it is a my (Akshay) own customElevatedButton widget.

class CustomElevatedButton extends StatelessWidget {
  final String btnFirstName;
  final Color btnFirstNameColor;
  final String btnLastName;
  final Color? btnLastNameColor;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  const CustomElevatedButton({
    super.key,
    required this.btnFirstName,
    required this.btnLastName,
    this.backgroundColor,
    required this.onPressed,
    required this.btnFirstNameColor,
    this.btnLastNameColor,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              btnFirstName,
              style: TextStyle(
                  color: btnFirstNameColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              btnLastName,
              style: TextStyle(color: AppColors.blackColor, fontSize: 15),
            )
          ],
        ));
  }
}
