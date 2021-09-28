import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  final double items = 6;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(15),
      height: 100 * items,
      child: GridView.builder(
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.pink,
              ),
            ),
          );
        },
      ),
    );
  }
}
