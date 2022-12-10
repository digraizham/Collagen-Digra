// ignore_for_file: file_names

import 'package:project_collagen/Components/Data_input/InputDataComponent.dart';
import 'package:project_collagen/size_config.dart';
import 'package:flutter/material.dart';

class InputdataScreen extends StatelessWidget {
  static String routeName = "/register";

  const InputdataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
        // ignore: prefer_const_constructors
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: InputDataComponent(),
    );
  }
}