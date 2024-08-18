import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlycustomproject/constant/app_colors.dart';

class LinearGradientWidget extends StatefulWidget {
  final Widget? child;

  const LinearGradientWidget(
      {super.key, this.child, required this.widgets, this.mainAxisAlignment});
  final MainAxisAlignment? mainAxisAlignment;
  final List<Widget> widgets;

  @override
  State<LinearGradientWidget> createState() => _LinearGradientWidgetState();
}

class _LinearGradientWidgetState extends State<LinearGradientWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.backgroundDark,
                AppColors.blueTextColor,
              ],
              stops: [0.2, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
            child: Column(
                mainAxisAlignment:
                    widget.mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...widget.widgets,
                ]),
          ),
        ),
      ),
    );
  }
}
