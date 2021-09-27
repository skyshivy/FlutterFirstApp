import 'package:first_flutter_app/HomeScreen/home_banner_screen.dart';
import 'package:first_flutter_app/HomeScreen/home_top_list.dart';
import 'package:first_flutter_app/HomeScreen/home_top_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First app"),
          backgroundColor: Colors.purple,
          // elevation: 0.0,
        ),
        body: Container(
          //color: Colors.red,
          child: ListView(
            children: [
              HomeBannerScreen(),
              //SizedBox(height: 40),
              //HomeTopTab(),
              myAppTab(),
              SizedBox(height: 10),
              HomeTopList(),
              SizedBox(height: 40),
              HomeTopList(),
              SizedBox(height: 40),
              HomeTopList(),
              SizedBox(height: 40),
            ],
          ),
        )
        //HomeBannerScreen(),
        );
  }
}
