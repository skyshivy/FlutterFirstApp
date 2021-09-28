import 'package:flutter/material.dart';

class HomeBannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
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
          return Container(
            //borderRadius: BorderRadius.circular(10.0),
            child: Container(
              padding: EdgeInsets.all(5),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
                        offset: Offset(0, 0), // Shadow position
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width - 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      "https://picsum.photos/id/70$index/320",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
