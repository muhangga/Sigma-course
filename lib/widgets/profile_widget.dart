import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class ProfileWidget extends StatelessWidget {
  final double top;
  final double bottom;
  final Color colorBackground;
  final Color colorBorder;
  final String imageUrl;
  final String name;
  final String npm;

  const ProfileWidget({
    Key key,
    this.top,
    this.bottom,
    this.colorBackground,
    this.colorBorder,
    this.imageUrl,
    this.name,
    this.npm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: top,
        left: 20,
        right: 20,
        bottom: bottom,
      ),
      width: size.width,
      height: 220,
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: colorBorder, width: 2),
                shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                imageUrl,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            name,
            style: blue2TextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            npm,
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/facebook.png',
                height: 25,
              ),
              Image.asset(
                'assets/images/github.png',
                height: 25,
              ),
              Image.asset(
                'assets/images/instagram.png',
                height: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
