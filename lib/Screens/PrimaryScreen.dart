import 'package:flutter/material.dart';

class PrimaryScreen extends StatefulWidget {
  static String routeName = "/primary";
  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  int index = 0;
  final pages = [
    const Center(child: Text('Page 1', style: TextStyle(fontSize: 20),),),
    const Center(child: Text('Page 2', style: TextStyle(fontSize: 20),),),
    const Center(child: Text('Page 3', style: TextStyle(fontSize: 20),),),
    const Center(child: Text('Page 4', style: TextStyle(fontSize: 20),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: pages[index],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: const BorderSide(color: Colors.white, width: 2.0),
        ),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
    );
  }
}