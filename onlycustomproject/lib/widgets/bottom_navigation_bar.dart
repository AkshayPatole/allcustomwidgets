import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:onlycustomproject/constant/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const CustomBottomNavigationBar({Key? key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int visit = -1;
  double height = 70;
  Color selectColor = const Color(0xff9DDEA5);
  Color color = const Color(0xff6B6B6B);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: BottomBarDefault(
        items: const [
          TabItem(
            icon: Icons.person_add_alt_1_rounded,
            // title: AppString.leads,
          ),
          TabItem(
            icon: Icons.assignment_outlined,
            // title: AppString.orders,
          ),
          TabItem(
            icon: Icons.group,
            // title: AppString.campaign,
          ),
          TabItem(icon: Icons.directions_bike, title: "Trip"),
        ],
        backgroundColor: AppColors.buttonGreyColor,
        color: color,
        colorSelected: selectColor,
        indexSelected: visit,
        onTap: (int index) {
          switch (index) {
            case 0:
              // context.push(Routes.leadsScreen);
              FocusScope.of(context).unfocus();
              break;
            case 1:
              // context.push(Routes.orderScreen);
              FocusScope.of(context).unfocus();
              break;
            case 2:
              // context.push(Routes.campaignScreen);

              FocusScope.of(context).unfocus();
              break;
            case 3:
              // context.push(Routes.recentTripScreen);

              FocusScope.of(context).unfocus();
              // FocusScope.of(context).unfocus();
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
