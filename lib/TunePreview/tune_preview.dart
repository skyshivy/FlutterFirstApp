import 'package:flutter/material.dart';

class TunePreview extends StatelessWidget {
  final String title;

  const TunePreview({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 300,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 2,
              offset: Offset(0, 0), // Shadow position
            ),
          ],
        ),
        child: Center(
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
