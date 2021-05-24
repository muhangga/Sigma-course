import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/widgets/button_widget.dart';

class AddData extends StatelessWidget {
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference courses = firestore.collection('courses');

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 170,
                    width: size.width,
                    child: Image.asset('assets/images/background.png',
                        fit: BoxFit.fitWidth),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 28),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: whiteColor,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Add Course',
                      style: primaryTextStyle.copyWith(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 18),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      width: size.width,
                      height: 50,
                      child: TextField(
                        controller: categoryController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: 'Category Course',
                          hintText: 'Category Course',
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      width: size.width,
                      height: 50,
                      child: TextField(
                        controller: descController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: 'Desc Course',
                          hintText: 'Desc Course',
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      width: size.width,
                      height: 50,
                      child: TextField(
                        controller: numberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 25),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: 'Total Video',
                          hintText: 'Total Video',
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ButtonWidget(
                      left: 24,
                      right: 24,
                      top: 20,
                      bottom: 24,
                      colorButton: blueColor,
                      text: 'Add Course',
                      onPress: () {
                        courses.add({
                          'category': categoryController.text,
                          'desc': descController.text,
                          'Total Video':
                              int.tryParse(numberController.text) ?? 0
                        });

                        categoryController.text = '';
                        descController.text = '';
                        numberController.text = '';
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
