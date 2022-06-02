// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:test_dashboard/helpers/responsivness.dart';
import 'package:test_dashboard/widgets/large_screen.dart';
import 'package:test_dashboard/widgets/small_screen.dart';
import 'package:test_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: LargeScreen(),
          smallScreen: SmallScreen()),
    );
  }
}
