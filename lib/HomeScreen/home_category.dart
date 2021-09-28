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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  print("category tapped $index");
                },
                child: Container(
                  //padding: EdgeInsets.all(10),

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.8),
                          blurRadius: 2,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        "https://picsum.photos/id/5$index/200",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
