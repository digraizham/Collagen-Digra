import 'package:project_collagen/Screens/Login/LoginScreen.dart';
import 'package:project_collagen/SplashScreen_View.dart';
import 'package:project_collagen/routes.dart';
import 'package:project_collagen/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Collagen",
    theme: theme(),
    home: SplashScreenPage(),
    routes: routes,
  ));
}
