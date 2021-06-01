import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/widgets/account_widget.dart';
import 'package:sigma_course/widgets/button_widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _obsecureText;

  @override
  void initState() {
    super.initState();
    _obsecureText = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child: Image.asset('assets/images/background.png',
                    fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Register',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Account Before continue',
                              style: greyTextStyle.copyWith(fontSize: 14)),
                        ),
                        SizedBox(height: 15),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          width: size.width,
                          height: 50,
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
                              prefixIcon: Icon(Icons.perm_identity),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: 'Full Name',
                              hintText: 'Full Name',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          width: size.width,
                          height: 50,
                          child: TextField(
                            controller: usernameController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
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
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          width: size.width,
                          height: 50,
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: 'Email',
                              hintText: 'Email',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          width: size.width,
                          height: 50,
                          child: TextField(
                            controller: passwordController,
                            obscureText: _obsecureText,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_open),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      (_obsecureText == false)
                                          ? _obsecureText = true
                                          : _obsecureText = false;
                                    });
                                  },
                                  child: Icon(_obsecureText == false
                                      ? Icons.remove_red_eye
                                      : Icons.visibility_off)),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
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
                          bottom: 25,
                          colorButton: blueColor,
                          text: 'Register',
                        ),
                        AccountWidget(
                          haveAccount: 'Already have account? ',
                          registerOrLogin: 'Login here !',
                          onPress: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
