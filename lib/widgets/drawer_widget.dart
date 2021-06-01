import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/help_page.dart';
import 'package:sigma_course/ui/list_page.dart';
import 'package:sigma_course/ui/login_page.dart';
import 'package:sigma_course/ui/my_course_page.dart';
import 'package:sigma_course/ui/profile_page.dart';
import 'package:sigma_course/ui/setting_page.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: 'assets/icon/ic_profile.png',
              text: 'Profile',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ProfilePage()));
              }),
          _drawerItem(
              icon: 'assets/icon/ic_course.png',
              text: 'My Course',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyCourse()));
              }),
          _drawerItem(
              icon: 'assets/icon/ic_setting.png',
              text: 'Settings',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SettingPage()));
              }),
          _drawerItem(
              icon: 'assets/icon/ic_help.png',
              text: 'Help',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HelpPage()));
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Firebase",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: 'assets/icon/ic_list.png',
              text: 'List Course',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListPage()));
              }),
          Divider(height: 25, thickness: 1),
          _drawerItem(
              icon: 'assets/icon/ic_logout.png',
              text: 'Logout',
              onTap: () {
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
                            child:
                                Text('No'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              }),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('assets/images/avatar.png'),
        fit: BoxFit.cover,
      ),
    ),
    accountName: Text(
      'Adinda Risty Kumala',
      style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    accountEmail: Text('Student',
        style: whiteTextStyle.copyWith(
          fontSize: 14,
        )),
  );
}

Widget _drawerItem({String icon, String text, GestureTapCallback onTap}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: ListTile(
      title: Row(
        children: <Widget>[
          Image.asset(
            icon,
            height: 24,
            width: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: brownTextStyle.copyWith(
                fontSize: 14,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    ),
  );
}
