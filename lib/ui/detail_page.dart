import 'package:flutter/material.dart';
import 'package:sigma_course/models/category_model.dart';

class DetailPage extends StatelessWidget {
  final Category category;
  DetailPage({@required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(category.name),
    );
  }
}