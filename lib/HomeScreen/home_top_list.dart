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
                GridCell(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GridCell extends StatelessWidget {
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

      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          "https://picsum.photos/id/1/200",
          fit: BoxFit.cover,
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
