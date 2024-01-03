import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlycustomproject/constant/app_colors.dart';
import 'package:onlycustomproject/widgets/custom_text_widget.dart';
import 'package:onlycustomproject/widgets/sized_box_widget.dart';
import 'drop_down_widget.dart';

class MiddleWidget extends StatefulWidget {
  const MiddleWidget({super.key});

  @override
  State<MiddleWidget> createState() => _MiddleWidgetState();
}

class _MiddleWidgetState extends State<MiddleWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          _imageWidget(),
          const SizedBoxWidget(
            height: 40,
          ),
          const DropDownWidget(),
        ],
      ),
      _middleText(),
      _verticalTextWidget()
    ]);
  }

  _middleText() {
    return Positioned(
      top: 250,
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: TextWidget(
          text: 'what_you_want',
          // .tr(),
          color: AppColors.greyDarkColor,
          fontSize: 20.sp,
        ),
      ),
    );
  }

  _verticalTextWidget() {
    return Positioned(
      // bottom: 250.h,
      left: 294.w,
      right: 36.w,
      top: 210.h,
      child: RotatedBox(
        quarterTurns: 1,
        child: TextWidget(
          text: "MAKE IT SIMPLE FOR EVERY CITIZEN",
          fontSize: 13.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.greyDarkColor,
        ),
      ),
    );
  }

  _imageWidget() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 285.h,
      child: Image.asset(
        'assets/image/main_image.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
