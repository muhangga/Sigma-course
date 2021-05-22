import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class ButtonWidget extends StatelessWidget {
  final double left;
  final double top;
  final double right;
  final double bottom;
  final Color colorButton;
  final String text;
  final Function onPress;

  const ButtonWidget({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.colorButton,
    this.text,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.fromLTRB(left, top, right, bottom),
        width: size.width,
        height: 50,
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: whiteTextStyle.copyWith(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
