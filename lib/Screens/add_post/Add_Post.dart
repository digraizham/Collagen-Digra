import 'package:project_collagen/size_config.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = "/add_post";

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        // ignore: prefer_const_constructors
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black,), 
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      
    );
  }
}