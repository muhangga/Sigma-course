import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/widgets/card_setting_widget.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47C4E0),
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: true,
        backgroundColor: Color(0xff47C4E0),
        elevation: 1,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 30),
                Text('Help For What ?',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                    child: Column(
                      children: [
                        CardSetting(
                          title: "Can't Login",
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        SizedBox(height: 10),
                        CardSetting(
                          title: "How to Edit Profile",
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        SizedBox(height: 10),
                        CardSetting(
                          title: "How to Change Password",
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                        SizedBox(height: 10),
                        CardSetting(
                          title: "How to Transaction",
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
