import 'package:first_flutter_app/TunePreview/tune_preview.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  final double items = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(5),
      //height: 100 * items,
      child: GridView.builder(
        itemCount: items.toInt(),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 2),
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  print("category tapped $index");
                  var push = Navigator.push(context, MaterialPageRoute(
                      //fullscreenDialog: true,
                      builder: (context) {
                    var tunePreview = TunePreview(
                      title: "HomeTopList cell tap",
                    );
                    return tunePreview;
                  }));
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
                        "https://picsum.photos/id/1$index/300/200",
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
