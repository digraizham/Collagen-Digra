import 'package:flutter/material.dart';

class PrimaryScreen extends StatefulWidget {
  static String routeName = "/primary";

  const PrimaryScreen({super.key});
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
    const Center(child: Text('Page 5', style: TextStyle(fontSize: 20),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/Picture1.png', fit: BoxFit.contain, height: 32,),
            Container(padding: const EdgeInsets.all(12.0), child: const Text('Hello, User'),)
          ],
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
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
            onPressed: () {},
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: const CircleBorder(
              side: BorderSide(color: Colors.white, width: 4.0),
            ),
            child: Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
    );
  }
}