import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class CardSetting extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget trailing;
  final Function onTap;

  const CardSetting({
    Key key,
    this.icon,
    this.title,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          color: blue2Color,
          size: 30,
        ),
        title: Text(
          title,
          style: primaryTextStyle.copyWith(
              fontSize: 15, fontWeight: FontWeight.w100),
        ),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
