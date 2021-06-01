import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/login_page.dart';
import 'package:sigma_course/widgets/button_widget.dart';
import 'package:sigma_course/widgets/card_setting_widget.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47C4E0),
      appBar: AppBar(
        title: Text('Setting'),
        centerTitle: true,
        backgroundColor: Color(0xff47C4E0),
        elevation: 1,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/avatar.png'),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Adinda Risty Kumala',
                style: whiteTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Gabung Sejak 20 Mei 2021',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pusat Bantuan',
                        style: blackTextStyle.copyWith(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CardSetting(
                        icon: Icons.help,
                        title: 'Bantuan',
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      CardSetting(
                        icon: Icons.volume_down,
                        title: 'Laporan Bantuan',
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      CardSetting(
                        icon: Icons.settings_input_antenna,
                        title: 'Pantau Jaringan',
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pengaturan',
                        style: blackTextStyle.copyWith(fontSize: 18),
                      ),
                      CardSetting(
                          icon: Icons.wb_sunny,
                          title: 'Dark Theme',
                          trailing: switchWidget(context)),
                      ButtonWidget(
                          left: 20,
                          right: 20,
                          top: 30,
                          bottom: 15,
                          colorButton: blueColor,
                          text: 'Logout',
                          onPress: () {
                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Logout'),
                                  content: Text('Are you sure?'),
                                  actions: [
                                    FlatButton(
                                      child: Text('Yes'),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => LoginPage()));
                                      },
                                    ),
                                    FlatButton(
                                      child: Text('No'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget switchWidget(BuildContext context) {
    return Switch.adaptive(
      value: false,
      onChanged: (value) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Coming Soon!'),
              content: Text('This feature will be coming soon!'),
              actions: [
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
