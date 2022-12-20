import 'package:flutter/material.dart';
import 'package:project_collagen/Screens/NavbarBody/HomeBody.dart';
import 'package:project_collagen/Screens/NavbarBody/FriendBody.dart';
import 'package:project_collagen/Screens/NavbarBody/MoreBody.dart';
import 'package:project_collagen/Screens/NavbarBody/ShopBody.dart';

import 'add_post/AddPostScreen.dart';

class PrimaryScreen extends StatefulWidget {
  static String routeName = "/primary";

  const PrimaryScreen({super.key});
  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  int index = 0;
  final body = [
    const HomeBody(),
    const FriendBody(),
    null,
    const ShopBody(),
    const MoreBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: body[index],
        bottomNavigationBar: NavigationBar(
          height: 60,
          selectedIndex: index,
          backgroundColor: Colors.blue,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.supervisor_account_outlined),
              selectedIcon: Icon(Icons.supervisor_account_rounded),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.supervisor_account_outlined),
              selectedIcon: Icon(Icons.supervisor_account_rounded),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart_sharp),
              label: ' ',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz_outlined),
              selectedIcon: Icon(Icons.more_horiz),
              label: ' ',
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPostScreen()),
                );
              },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: const CircleBorder(
                side: BorderSide(color: Colors.white, width: 4.0),
              ),
              child: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
