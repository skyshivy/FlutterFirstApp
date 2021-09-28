import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  final double items = 6;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      height: 100 * items,
      child: GridView.builder(
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
              //padding: EdgeInsets.all(5),

              child: GestureDetector(
            onTap: () {
              print("category tapped $index");
            },
            child: Container(
              //padding: EdgeInsets.all(10),

              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Image.network(
                  "https://picsum.photos/id/2$index/200",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ));
        },
      ),
    );
  }
}
