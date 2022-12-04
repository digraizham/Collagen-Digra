import 'package:project_collagen/Screens/Forgot_Password/ForgotPassScreen.dart';
import 'package:project_collagen/Screens/Login/LoginScreen.dart';
import 'package:project_collagen/Screens/Register/SignupScreen.dart';
import 'package:project_collagen/Screens/Personal Data Input/InputDataScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  InputdataScreen.routeName: (context) => InputdataScreen(),
  ForgotPassScreen.routeName: (context) => ForgotPassScreen()
};
