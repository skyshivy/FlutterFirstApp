import 'package:flutter/material.dart';

class HomeTopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black12,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, i) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            child: SizedBox(
              height: 35,
              child: Container(
                decoration: BoxDecoration(
                  color: i == 0 ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.50,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       offset: Offset(0.0, 0.0),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 1.0)
                  // ]
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "Tab Views",
                      style: TextStyle(
                          color: i == 0 ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
