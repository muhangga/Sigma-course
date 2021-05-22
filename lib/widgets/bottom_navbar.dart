import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Function onPress;

  BottomNavbarItem({
    this.icon,
    this.isActive,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Spacer(),
          Icon(
            icon,
            size: 22,
          ),
          Spacer(),
          isActive
              ? Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
