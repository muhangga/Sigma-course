import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';

class AccountWidget extends StatelessWidget {
  final String haveAccount;
  final String registerOrLogin;
  final Function onPress;

  const AccountWidget({
    Key key,
    this.haveAccount,
    this.registerOrLogin,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          haveAccount,
          style: greyTextStyle.copyWith(fontSize: 12),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            registerOrLogin,
            style: primaryTextStyle.copyWith(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
