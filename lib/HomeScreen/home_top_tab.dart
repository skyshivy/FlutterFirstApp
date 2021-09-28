import 'package:first_flutter_app/TunePreview/tune_preview.dart';
import 'package:flutter/material.dart';

// class HomeTopTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return myAppTab();
//   }
// }

class myAppTab extends StatefulWidget {
  final ValueChanged<int> onClick; //VoidCallback<int> onClick();

  const myAppTab(this.onClick, {Key? key}) : super(key: key);
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myAppTab> {
  int selected = 0;

  //var tabItems;
  final tabItems = ["New Release", "Just For You"];
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black12,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabItems.length,
        itemBuilder: (context, i) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
            child: SizedBox(
              height: 35,
              child: Container(
                decoration: BoxDecoration(
                  color: i == selected ? Colors.pink : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.50,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey,
                  //       offset: Offset(0.0, 0.0),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 1.0)
                  // ]
                ),
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: MaterialButton(
                      child: Text(
                        tabItems[i],
                        style: TextStyle(
                            color: i == selected ? Colors.white : Colors.black),
                      ),
                      onPressed: () {
                        setState(() {
                          selected = i;
                        });

                        print("tapped \n selected =  $selected \n i = $i");
                      },
                      minWidth: 10,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
