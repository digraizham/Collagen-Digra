import 'package:project_collagen/Components/New_Pass/NewPassComponent.dart';
import 'package:project_collagen/size_config.dart';
import 'package:flutter/material.dart';

class NewPassScreen extends StatelessWidget {
  static String routeName = "/newpass";

  const NewPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            "Kata Sandi Baru",
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        // ignore: prefer_const_constructors
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: NewPassComponent(),
    );
  }
}
