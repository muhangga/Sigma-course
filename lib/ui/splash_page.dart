import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/login_page.dart';
import 'package:sigma_course/ui/register_page.dart';
import 'package:sigma_course/widgets/button_widget.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo_sigma.png',
            width: 240,
          ),
          ButtonWidget(
              left: 24,
              right: 24,
              top: 60,
              bottom: 0,
              colorButton: blueColor,
              text: 'Login',
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }),
          ButtonWidget(
              left: 24,
              right: 24,
              top: 20,
              bottom: 0,
              colorButton: blue2Color,
              text: 'Register',
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              }),
        ],
      ),
    );
  }
}
