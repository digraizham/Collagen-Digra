import 'package:project_collagen/Components/Recovery_Code/RecoverComponent.dart';
import 'package:project_collagen/size_config.dart';
import 'package:flutter/material.dart';

class RecoverScreen extends StatelessWidget {
  static String routeName = "/recovery";

  const RecoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            "Kode  Pemulihan",
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
      body: const RecoverComponent(),
    );
  }
}
