import 'package:flutter/material.dart';

class HomeBannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
      height: 200,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
            ),
            width: MediaQuery.of(context).size.width - 40,
            child:
                Image.network("https://picsum.photos/330/200/?blur=$index+1"),
          );
        },
      ),
    );
  }
}
