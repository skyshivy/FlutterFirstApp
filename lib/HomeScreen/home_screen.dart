import 'package:first_flutter_app/HomeScreen/home_banner_screen.dart';
import 'package:first_flutter_app/HomeScreen/home_category.dart';
import 'package:first_flutter_app/HomeScreen/home_top_list.dart';
import 'package:first_flutter_app/HomeScreen/home_top_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("First app"),
          elevation: 0.0,
          backgroundColor: Colors.white,
          // elevation: 0.0,
        ),
        body: Container(
          //color: Colors.red,
          child: ListView(
            children: [
              HomeBannerScreen(),
              //SizedBox(height: 40),
              //HomeTopTab(),
              Divider(
                //color: Colors.teal,
                height: 5,
                thickness: 0.5,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 3),
                child: myAppTab((index) {
                  print("Buttontapped is $index");
                }),
              ),
              SizedBox(height: 10),
              HomeTopList(),
              SizedBox(height: 20),
              Divider(
                //color: Colors.teal,
                height: 20,
                thickness: 0.5,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
              ),
              HomeCategory(),
            ],
          ),
        )
        //HomeBannerScreen(),
        );
  }
}
