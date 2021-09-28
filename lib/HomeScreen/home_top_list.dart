import 'package:first_flutter_app/TunePreview/tune_preview.dart';
import 'package:flutter/material.dart';

class HomeTopList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Cell Tapped");
        var push =
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          var tunePreview = TunePreview(
            title: "HomeTopList cell tap",
          );
          return tunePreview;
        }));
      },
      child: Container(
        // color: Colors.amber,
        height: 190,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  SizedBox(width: index == 0 ? 10 : 0),
                  //Text("Index = $index"),
                  TuneCell(index: index),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TuneCell extends StatelessWidget {
  final int index;

  const TuneCell({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      width: 170,
      //color: Colors.black12,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 2,
              offset: Offset(0, 0), // Shadow position
            ),
          ],
        ),
        child: Column(
          children: [
            ImageContainer(index: index),
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
  final int index;

  const ImageContainer({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      //borderRadius: BorderRadius.circular(300.0),

      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
          ),
          child: Image.network(
            "https://picsum.photos/id/1$index/200",
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
