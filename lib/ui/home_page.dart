import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/data/dummy_category.dart';
import 'package:sigma_course/ui/detail_page.dart';
import 'package:sigma_course/ui/profile_page.dart';
import 'package:sigma_course/widgets/bottom_navbar.dart';
import 'package:sigma_course/widgets/category_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset('assets/images/background_home.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 36),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: yellowColor,
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
                              'Adinda Risty Kupret',
                              style: whiteTextStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/bell.png',
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
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
                          'Category',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Container(
                            width: size.width,
                            height: size.height,
                            child: ListView(
                              children: categoryList.map((category) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(category: category),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 12),
                                    height: 150,
                                    width: 305,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff8f8f8),
                                    ),
                                    child: Image.asset(category.imageUrl),
                                  ),
                                );
                              }).toList(),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 100,
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              icon: Icons.home,
              isActive: true,
            ),
            BottomNavbarItem(
              icon: Icons.person,
              isActive: false,
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
