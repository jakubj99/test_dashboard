// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:test_dashboard/helpers/responsivness.dart';
import 'package:test_dashboard/widgets/large_screen.dart';
import 'package:test_dashboard/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: LargeScreen(),
          smallScreen: SmallScreen()),
    );
  }
}
