import 'package:flutter/material.dart';

class TunePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tune Preview"),
          backgroundColor: Colors.pink,
          // elevation: 0.0,
        ),
        body: Container(
          //color: Colors.red,
          child: ListView(
            children: [
              Text("data"),
            ],
          ),
        )
        //HomeBannerScreen(),
        );
  }
}
