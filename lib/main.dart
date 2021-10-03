import 'package:first_flutter_app/Login/login_page.dart';
import 'package:first_flutter_app/TunePreview/tune_preview.dart';
import 'package:flutter/material.dart';
import 'HomeScreen/home_screen.dart';

void main() {
  // main app test commit today
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: TunePreview(title: "Preview"), //HomeScreen(),
      //Text("sky"), //HomeScreen(),
    ),
  );
}
