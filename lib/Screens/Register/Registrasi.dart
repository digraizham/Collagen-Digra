import 'package:project_collagen/Screens/Login/LoginScreen.dart';
import 'package:project_collagen/size_config.dart';
import 'package:flutter/material.dart';
import 'package:project_collagen/utils/constants.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
        // ignore: prefer_const_constructors
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey,), 
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      // body: LoginComponent(),
    );
  }
}