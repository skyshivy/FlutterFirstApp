import 'package:first_flutter_app/HomeScreen/home_banner_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First app"),
          elevation: 0.0,
        ),
        body: HomeBannerScreen());
  }
}
