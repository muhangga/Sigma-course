import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/models/category_model.dart';
import 'package:sigma_course/ui/my_course_page.dart';
import 'package:sigma_course/widgets/button_widget.dart';

class DetailPage extends StatelessWidget {
  final Category category;
  DetailPage({@required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6FDFF),
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
        backgroundColor: category.color,
        elevation: 2,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    category.name.toUpperCase(),
                    style: TextStyle(
                        color: category.color,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Image.asset(category.iconUrl),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${category.name} Course',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffFFF8F8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person, color: blue2Color),
                                SizedBox(width: 10),
                                Text(
                                  '${category.student} Students',
                                  style: grey2TextStyle.copyWith(fontSize: 14),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.lock_clock, color: blue2Color),
                                SizedBox(width: 10),
                                Text(
                                  '50 Hours',
                                  style: grey2TextStyle.copyWith(fontSize: 14),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: blue2Color),
                                SizedBox(width: 10),
                                Text(
                                  '${category.rating}',
                                  style: grey2TextStyle.copyWith(fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'About this Course',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        category.desc,
                        style: grey2TextStyle.copyWith(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Video',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 480,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) => CardDetailCourses(
                            title: category.listCourseTitle[index],
                            subtitle:
                                '${category.listCourseDuration[index].toString()} Minutes',
                            icon: category.iconUrl,
                          ),
                        ),
                      ),
                      ButtonWidget(
                        top: 0,
                        left: 24,
                        right: 24,
                        bottom: 10,
                        text: 'Finish the Course',
                        colorButton: primaryColor,
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyCourse()));
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardDetailCourses extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const CardDetailCourses({
    Key key,
    this.icon,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        leading: Image.asset(
          icon,
          height: 40,
        ),
        title: Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 14),
        ),
        subtitle: Text(
          subtitle,
          style: greyTextStyle.copyWith(fontSize: 12),
        ),
        trailing: Icon(
          Icons.play_circle_fill_outlined,
          size: 30,
          color: primaryColor,
        ),
      ),
    );
  }
}
