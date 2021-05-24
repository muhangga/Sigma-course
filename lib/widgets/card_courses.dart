import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class CardCourses extends StatelessWidget {
  final String category;
  final String desc;
  final int totalVideo;
  final Function onUpdate;
  final Function onDelete;
  const CardCourses({
    Key key,
    this.category,
    this.desc,
    this.onUpdate,
    this.onDelete,
    this.totalVideo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        child: ListTile(
          leading: GestureDetector(
            onTap: onUpdate,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: Center(
                  child: Icon(
                Icons.design_services,
                color: whiteColor,
                size: 28,
              )),
            ),
          ),
          title: Text(category),
          isThreeLine: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(desc),
              SizedBox(height: 8),
              Text('Total Video : $totalVideo'),
            ],
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: GestureDetector(
              onTap: onDelete,
              child: Center(
                child: Icon(
                  Icons.delete,
                  color: whiteColor,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
