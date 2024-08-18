import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlycustomproject/constant/app_colors.dart';
import 'package:onlycustomproject/widgets/custom_text_widget.dart';

class DropDownFormWidget extends StatelessWidget {
  const DropDownFormWidget({
    super.key,
    required this.context,
    required this.list,
    required this.selectedValue,
    this.onChanged,
    this.readOnly = false,
    this.isRounded = true,
    this.dropdownColor = AppColors.containerGreyColor,
    this.textColor = AppColors.whiteColor,
    this.optionSelectColor = AppColors.whiteColor,
    this.hintText,
    this.validator,
    this.fontSize = 18,
    this.autovalidateMode,
    this.height,
  });

  final BuildContext context;
  final List<String> list;
  final String selectedValue;
  final Function? onChanged;
  final bool readOnly;
  final bool isRounded;
  final Color? dropdownColor;
  final Color textColor;
  final double fontSize;
  final Color optionSelectColor;
  final String? hintText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: AppColors.textGrey.withOpacity(0.0),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 10.h),
      ),
      dropdownColor: AppColors.containerGreyColor.withOpacity(0.9),
      isExpanded: true,
      hint: TextWidget(
        text: hintText ?? '',
        fontSize: fontSize.sp,
        color: AppColors.whiteColor,
      ),
      iconSize: 30.w,
      validator: validator,
      iconEnabledColor: AppColors.whiteColor,
      icon: Icon(
        Icons.arrow_drop_down_sharp,
        size: 25.w,
      ),
      items: list.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: TextWidget(
            text: value,
            color: textColor,
            fontSize: fontSize.sp,
          ),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext context) {
        return list.map<Widget>(
          (String value) {
            return TextWidget(
              text: value,
              fontSize: fontSize.sp,
              color: optionSelectColor,
            );
          },
        ).toList();
      },
      onChanged: (value) {
        onChanged!(value);
      },
    );
  }
}
