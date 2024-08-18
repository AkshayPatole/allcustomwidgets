import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DropdownWidget<T> extends StatefulWidget {
  final List<T>? items;
  T? selectedValue;
  final ValueChanged<T>? onChanged;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  DropdownWidget({
    this.items,
    this.selectedValue,
    this.onChanged,
    this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  DropdownWidgetState<T> createState() => DropdownWidgetState<T>();
}

class DropdownWidgetState<T> extends State<DropdownWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<T>(
        value: widget.selectedValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 20.sp,
        style: GoogleFonts.kumbhSans(
          fontSize: 15.sp,
          fontWeight: FontWeight.w900,
          color: widget.color,
        ),
        onChanged: (T? newValue) {
          setState(() {
            widget.selectedValue = newValue;
            widget.onChanged?.call(newValue!);
          });
        },
        items: widget.items?.map<DropdownMenuItem<T>>((T value) {
          return DropdownMenuItem<T>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
      ),
    );
  }
}
