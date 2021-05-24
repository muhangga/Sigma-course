import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: ListView(
                    children: [
                      // TODO :: VIEW DATA
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
