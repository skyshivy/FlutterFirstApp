import 'package:first_flutter_app/TunePreview/tune_preview.dart';
import 'package:flutter/material.dart';

class HomeTopList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                SizedBox(width: index == 0 ? 20 : 10),
                //Text("Index = $index"),
                TuneCell(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TuneCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      //color: Colors.black12,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            ImageContainer(),
            Spacer(),
            CardButtonContainer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 150,
      //borderRadius: BorderRadius.circular(300.0),

      child: GestureDetector(
        onTap: () {
          print("image clicked $context");
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            var tunePreview = TunePreview(
              title: "ImageContainer",
            );
            return tunePreview;
          }));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
          ),
          child: Image.network(
            "https://picsum.photos/id/1/200",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class CardButtonContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Spacer(),
        //Text("data"),ele
        Spacer(),
        // MaterialButton(onPressed: (){

        // },),);
        MaterialButton(
          child: Text('But'),
          onPressed: () {
            print("tapped");
          },
          minWidth: 10,
        ),
        Spacer(),
        Spacer(),
        Spacer(),

        MaterialButton(
          child: Text('But'),
          onPressed: () {
            print("tapped");
          },
          minWidth: 10,
        ),
        Spacer(),
      ],
    );
  }
}
