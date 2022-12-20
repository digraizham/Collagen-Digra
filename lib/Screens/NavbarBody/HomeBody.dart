// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_collagen/Screens/AppbarBody/Inbox.dart';
import 'package:project_collagen/Screens/AppbarBody/Notif.dart';
import 'package:project_collagen/Screens/Post/Comment.dart';
import 'package:project_collagen/size_config.dart';

import '../AppbarBody/Search.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBody();
}

class _HomeBody extends State<HomeBody> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.square(60),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 2.0),
                blurRadius: 4.0,
              )
            ]),
            child: AppBar(
              backgroundColor: Colors.white,
              title: const Text("Beranda"),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              actions: <Widget>[
                IconButton(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotifBody()
                        ),
                      );
                    }
                ),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: MySearchDelegate(),
                    );
                  },
                ),
                IconButton(
                    icon: const Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PesanBody()
                        ),
                      );
                    }
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Post1(),
                Post1(),
                Post1(),
                Post1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.asset("assets/images/Picture1.png"),
            title: Text('Shafwan Maulana'),
            subtitle: Text('10 menit yang lalu'),
          ),
          Row(
            children: const [
              Expanded(
                child:Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: (10)),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,

                        ),
                        softWrap: true,
                        maxLines: 10,
                        textAlign: TextAlign.justify
                    )
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 8,
            endIndent: 8,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.thumb_up_alt_outlined),
                      onPressed: () { },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.thumb_down_alt_outlined),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.comment_outlined),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CommentBody()),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                      child: Icon(Icons.share),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CommentBody()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
