// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_dashboard/layout.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
debugShowCheckedModeBanner: false,
title: "Dash",
theme: ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.mulishTextTheme(
    Theme.of(context).textTheme
  ).apply(
    bodyColor: Colors.black
  ),
  // ignore: prefer_const_literals_to_create_immutables
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
  }),
  primaryColor: Colors.blue
),
home: SiteLayout(),
    );
  }
}