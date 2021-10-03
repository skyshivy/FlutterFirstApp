import 'package:first_flutter_app/CustomObjects/custom_image_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TunePreview extends StatelessWidget {
  final String title;

  const TunePreview({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              TuneImage(),
              // SizedBox(
              //   height: 20,
              // ),
              PlayerController(),
              TuneInfo(),
            ],
          ),
        ),
      ),
    );
    //HomeBannerScreen(),
  }
}

class TuneInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tune Name",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Tune  Artist Name",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        CustomImageButton("heart", () {
          print("heart tapped");
        })
      ],
    );
  }
}

class PlayerController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageButton("previous", () {
          print("Previous tapped");
        }),
        CustomImageButton("play", () {
          print("Play tapped");
        }),
        CustomImageButton("Next1", () {
          print("Next tapped");
        }),
      ],
    );
  }
}

class TuneImage extends StatelessWidget {
  const TuneImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        //padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.width - 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,
              offset: Offset(1, 3), // Shadow position
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            "https://picsum.photos/id/11/300/200",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
