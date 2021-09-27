import 'package:flutter/material.dart';

class HomeBannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
      height: MediaQuery.of(context).size.width * 0.45,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                child: Image.network(
                  "https://picsum.photos/330/200/?blur=$index+2",
                  fit: BoxFit.cover,
                ),
              ));
        },
      ),
    );
  }
}
