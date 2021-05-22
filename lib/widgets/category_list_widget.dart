import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;

  const CategoryList({
    Key key,
    this.backgroundColor,
    this.textColor,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      height: 35,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 10,
        //     spreadRadius: 10,
        //     offset: Offset(0, 2),
        //   )
        // ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
