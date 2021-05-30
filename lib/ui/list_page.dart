import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/Firebase_CRUD/add_course_page.dart';
import 'package:sigma_course/widgets/card_courses_widget.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference courses = firestore.collection('courses');

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 170,
                    width: size.width,
                    child: Image.asset('assets/images/background.png',
                        fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 36),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(70),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whiteColor,
                            border: Border.all(color: whiteColor, width: 2),
                            image: DecorationImage(
                                image: AssetImage('assets/images/avatar.png'),
                                fit: BoxFit.cover,
                                alignment: Alignment.center),
                          ),
                        ),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Holla,',
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                            Text(
                              'Adinda Risty',
                              style: whiteTextStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Text('List Courses',
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              StreamBuilder<QuerySnapshot>(
                stream: courses.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: snapshot.data.docs
                          .map((e) => CardCourses(
                                category: e.data()['category'],
                                desc: e.data()['desc'],
                                totalVideo: e.data()['Total Video'],
                                onUpdate: () {
                                  courses.doc(e.id).update({
                                    'Total Video': e.data()['Total Video'] + 1,
                                  });
                                },
                                onDelete: () {
                                  courses.doc(e.id).delete();
                                },
                              ))
                          .toList(),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddData(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
    );
  }
}
