import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/data/dummy_category.dart';

class MyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Course'),
        centerTitle: true,
        backgroundColor: Color(0xff47C4E0),
        elevation: 1,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Color(0xff47C4E0),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 33,
                      vertical: 60,
                    ),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Color(0xffFEFDFF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: Colors.grey)]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'All',
                              style: primaryTextStyle.copyWith(fontSize: 14),
                            ),
                            Container(
                              height: 2,
                              width: 15,
                              color: primaryColor,
                            ),
                          ],
                        ),
                        Text('Ongoing'),
                        Text('Completed'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  // TODO :: MASIH ERROR GRID VIEW NYA
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 33,),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 20,
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 3 / 2,
                      ),
                      itemCount: categoryList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Color(0xffF8F8F8),
                          child: Column(
                            children: [
                              Image.asset(
                                categoryList[index].iconUrl,
                                height: 20,
                              ),
                              Text(categoryList[index].name,
                                  style: TextStyle(
                                      color: categoryList[index].color)),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
