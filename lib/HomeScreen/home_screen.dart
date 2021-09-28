import 'package:first_flutter_app/HomeScreen/home_banner_screen.dart';
import 'package:first_flutter_app/HomeScreen/home_category.dart';
import 'package:first_flutter_app/HomeScreen/home_top_list.dart';
import 'package:first_flutter_app/HomeScreen/home_top_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First app"),
          backgroundColor: Colors.teal,
          // elevation: 0.0,
        ),
        body: Container(
          //color: Colors.red,
          child: ListView(
            children: [
              HomeBannerScreen(),
              //SizedBox(height: 40),
              //HomeTopTab(),
              myAppTab((index) {
                print("Buttontapped is $index");
              }),
              SizedBox(height: 10),
              HomeTopList(),
              // SizedBox(height: 40),
              // HomeTopList(),
              // SizedBox(height: 40),
              // HomeTopList(),
              // SizedBox(height: 40),
              HomeCategory(),
              Container(
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.8),
                          blurRadius: 10,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        )
        //HomeBannerScreen(),
        );
  }
}
