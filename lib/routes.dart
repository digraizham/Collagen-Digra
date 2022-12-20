// ignore_for_file: depend_on_referenced_packages

import 'package:project_collagen/Screens/PrimaryScreen.dart';
import 'package:project_collagen/Screens/New_Pass/NewPassScreen.dart';
import 'package:project_collagen/Screens/Recovery_Code/RecoverScreen.dart';
import 'package:project_collagen/Screens/Forgot_Password/ForgotPassScreen.dart';
import 'package:project_collagen/Screens/Login/LoginScreen.dart';
import 'package:project_collagen/Screens/Register/SignupScreen.dart';
import 'package:project_collagen/Screens/Personal Data Input/InputDataScreen.dart';
import 'package:project_collagen/Screens/AppbarBody/Notif.dart';
import 'package:project_collagen/Screens/AppbarBody/Inbox.dart';
import 'package:project_collagen/Screens/AppbarBody/Search.dart';
import 'package:project_collagen/Screens/Post/Comment.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  SignupScreen.routeName: (context) => const SignupScreen(),
  InputdataScreen.routeName: (context) => const InputdataScreen(),
  ForgotPassScreen.routeName: (context) => const ForgotPassScreen(),
  RecoverScreen.routeName: (context) => const RecoverScreen(),
  NewPassScreen.routeName: (context) => const NewPassScreen(),
  PrimaryScreen.routeName: (context) => const PrimaryScreen(),
  NotifBody.routeName: (context) => const NotifBody(),
  SearchBody.routeName: (context) => const SearchBody(),
  PesanBody.routeName: (context) => const PesanBody(),
  CommentBody.routeName: (context) => CommentBody(),
};
