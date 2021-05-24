import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class CardCourses extends StatelessWidget {
  final String category;
  final String desc;
  const CardCourses({
    Key key, this.category, this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: ListTile(
          title: Text(category),
          subtitle: Text(desc),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: Center(
                child: Icon(
              Icons.arrow_right_outlined,
              color: whiteColor,
              size: 32,
            )),
          ),
        ),
      ),
    );
  }
}