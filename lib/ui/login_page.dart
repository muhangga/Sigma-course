import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/register_page.dart';
import 'package:sigma_course/widgets/account_widget.dart';
import 'package:sigma_course/widgets/bottom_navbar.dart';
import 'package:sigma_course/widgets/button_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 35),
              Image.asset(
                'assets/images/logo_sigma.png',
                width: 244,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                width: size.width,
                height: 50,
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelText: 'Username',
                    hintText: 'Username',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                width: size.width,
                height: 50,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    contentPadding: EdgeInsets.symmetric(horizontal: 25),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelText: 'Password',
                    hintText: 'Password',
                  ),
                ),
              ),
              ButtonWidget(
                left: 24,
                right: 24,
                top: 20,
                bottom: 24,
                colorButton: blueColor,
                text: 'Login',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavbar()));
                },
              ),
              AccountWidget(
                haveAccount: "Don't have account ? ",
                registerOrLogin: "Register here !",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
