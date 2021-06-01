import 'package:flutter/material.dart';
import 'package:sigma_course/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Color(0xff47C4E0),
        elevation: 1,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                color: Color(0xff47C4E0),
              ),
              ProfileWidget(
                top: 55,
                bottom: 0,
                colorBackground: Color(0xffFEFDFF),
                colorBorder: Color(0xff9466DF),
                imageUrl: 'assets/images/avatar3.png',
                name: 'Muhamad Angga',
                npm: '065118183',
              ),
              ProfileWidget(
                top: 290,
                bottom: 0,
                colorBackground: Color(0xffF2FAFF),
                colorBorder: Color(0xff0582CA),
                imageUrl: 'assets/images/avatar.png',
                name: 'Adinda Risty',
                npm: '065118202',
              ),
              ProfileWidget(
                top: 520,
                bottom: 80,
                colorBackground: Color(0xffFFF8F8),
                colorBorder: Color(0xff2E7D32),
                imageUrl: 'assets/images/avatar2.png',
                name: 'Salsa Nadira Putri',
                npm: '065118203',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
