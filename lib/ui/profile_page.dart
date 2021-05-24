import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/login_page.dart';
import 'package:sigma_course/widgets/button_widget.dart';
import 'package:sigma_course/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset('assets/images/background_home.png'),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 35),
                  child: Text(
                    'Profile',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ProfileWidget(
                top: 125,
                bottom: 0,
                colorBackground: Color(0xffFEFDFF),
                colorBorder: Color(0xff9466DF),
                imageUrl: 'assets/images/avatar3.png',
                name: 'Muhamad Angga',
                npm: '065118183',
              ),
              ProfileWidget(
                top: 360,
                bottom: 0,
                colorBackground: Color(0xffF2FAFF),
                colorBorder: Color(0xff0582CA),
                imageUrl: 'assets/images/avatar2.png',
                name: 'Adinda Risty',
                npm: '065118202',
              ),
              ProfileWidget(
                top: 600,
                bottom: 80,
                colorBackground: Color(0xffFFF8F8),
                colorBorder: Color(0xff2E7D32),
                imageUrl: 'assets/images/avatar.png',
                name: 'Salsa Nadira Putri',
                npm: '065118203',
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ButtonWidget(
                  left: 20,
                  right: 20,
                  top: 850,
                  bottom: 50,
                  colorButton: blueColor,
                  text: 'Logout',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
