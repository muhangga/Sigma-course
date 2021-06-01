import 'package:flutter/material.dart';

class Category {
  int id;
  String name;
  String imageUrl;
  String iconUrl;
  Color color;
  int student;
  double rating;
  String desc;
  List<String> listCourseTitle;
  List<double> listCourseDuration;

  Category({
    this.id,
    this.name,
    this.imageUrl,
    this.iconUrl,
    this.color,
    this.student,
    this.listCourseTitle,
    this.listCourseDuration,
    this.desc,
    this.rating,
  });

}
