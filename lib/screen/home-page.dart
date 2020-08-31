import 'package:ddd/utils/colors.dart';
import 'package:ddd/widget/body-center.dart';
import 'package:ddd/widget/bottom-nav.dart';
import 'package:ddd/widget/top-nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: premierColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          TopNav(),
          BodyCenter(),
          BottomNav()
        ],
      ),
    );
  }
}
