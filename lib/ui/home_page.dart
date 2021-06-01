import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/data/dummy_category.dart';
import 'package:sigma_course/ui/detail_page.dart';
import 'package:sigma_course/widgets/category_list_widget.dart';
import 'package:sigma_course/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff47C4E0),
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                color: Color(0xff47C4E0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                              'Adinda Risty Kumala',
                              style: whiteTextStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 10),
                    child: Text(
                      'Lets Study !',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    width: size.width,
                    height: 90,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: whiteColor,
                        prefixIcon:
                            Icon(Icons.search, color: greyColor, size: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Find your class ..',
                        hintStyle: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 100,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/promote.png'),
                        SizedBox(height: 16),
                        Text(
                          'Category',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Container(
                            width: size.width,
                            height: 35,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                CategoryList(
                                  backgroundColor: Color(0xffFFEFBE),
                                  text: 'Ekonomi',
                                  textColor: yellowColor,
                                ),
                                CategoryList(
                                  backgroundColor: Color(0xffF8F8F8),
                                  text: 'Biologi',
                                  textColor: grey2Color,
                                ),
                                CategoryList(
                                  backgroundColor: Color(0xffF8F8F8),
                                  text: 'Fisika',
                                  textColor: grey2Color,
                                ),
                                CategoryList(
                                  backgroundColor: Color(0xffF8F8F8),
                                  text: 'Matematika',
                                  textColor: grey2Color,
                                ),
                                CategoryList(
                                  backgroundColor: Color(0xffF8F8F8),
                                  text: 'Kimia',
                                  textColor: grey2Color,
                                ),
                              ],
                            )),
                        SizedBox(height: 14),
                        Text(
                          'Classess',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Center(
                          child: Container(
                              width: 305,
                              height: size.height,
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailPage(
                                              category: categoryList[index]),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 12),
                                      height: 150,
                                      width: 305,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xfff8f8f8),
                                      ),
                                      child: Image.asset(
                                        categoryList[index].imageUrl,
                                      ),
                                    ),
                                  );
                                },
                              )),
                        ),
                        SizedBox(height: 60),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
