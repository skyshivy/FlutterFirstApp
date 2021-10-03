import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String buttonName;
  // ignore: use_key_in_widget_constructors
  const CustomImageButton(this.buttonName, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60.0,
        height: 60.0,
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          child: Image.asset(
            'images/$buttonName.png',
          ),
        ));
  }
}
