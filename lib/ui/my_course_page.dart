import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/data/dummy_category.dart';
import 'package:sigma_course/ui/detail_page.dart';

class MyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Course'),
        centerTitle: true,
        backgroundColor: Color(0xff47C4E0),
        elevation: 1,
        toolbarHeight: 70,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              width: double.infinity,
              height: 80,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 33,
                vertical: 50,
              ),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xffFEFDFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.grey),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'All',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 2,
                        width: 15,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  Text(
                    'Ongoing',
                    style: greyTextStyle.copyWith(fontSize: 14),
                  ),
                  Text(
                    'Completed',
                    style: greyTextStyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 150),
              height: double.infinity,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return listMyCourses(context, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listMyCourses(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailPage(category: categoryList[index])));
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffF8F8F8),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(categoryList[index].iconUrl, height: 40),
            SizedBox(height: 10),
            Text(
              categoryList[index].name.toUpperCase(),
              style: TextStyle(
                color: categoryList[index].color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
