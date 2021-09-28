import 'package:flutter/material.dart';

class TunePreview extends StatelessWidget {
  final String title;

  const TunePreview({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.teal,
          // elevation: 0.0,
        ),
        body: Center(
          child: Text(
            "Please create Tune preview UI hereasasadas as asdad.",
            style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ));
    //HomeBannerScreen(),
  }
}
