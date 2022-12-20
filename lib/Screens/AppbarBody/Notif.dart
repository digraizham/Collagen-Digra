import 'dart:convert';

import 'package:flutter/material.dart';
import 'Models/notification.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotifBody extends StatefulWidget {
  static String routeName = "/notif";

  const NotifBody({super.key});

  @override
  _NotifBody createState() => _NotifBody();
}

class _NotifBody extends State<NotifBody> {
  
  List<dynamic> notifications = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/notifications.json');
    final data = await json.decode(response);


    setState(() {
      notifications = data['notifications']
          .map((data) => InstagramNotification.fromJson(data)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.square(60),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(49,103, 255, 0.4),
                offset: Offset(0, 4.0),
                blurRadius: 4.0,
              ),
            ]),
            child: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.black
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                "Notifikasi",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,

            ),
          ),
        ),

        body: ListView.builder(

            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return Slidable(
                actionPane: const SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: notificationItem(notifications[index]),
                secondaryActions: <Widget>[
                  Container(
                      height: 60,
                      color: Colors.grey.shade500,
                      child: const Icon(Icons.info_outline, color: Colors.white,)
                  ),
                  Container(
                      height: 60,
                      color: Colors.red,
                      child: const Icon(Icons.delete_outline_sharp, color: Colors.white,)
                  ),
                ],
              );
            }
        )
    );
  }

  notificationItem(InstagramNotification notification) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                notification.hasStory ?
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.orangeAccent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft
                      ),
                      // border: Border.all(color: Colors.red),
                      shape: BoxShape.circle
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(notification.profilePic)
                    ),
                  ),
                ) : Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300, width: 1)
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(notification.profilePic)
                  ),
                ),
                const SizedBox(width: 10,),
                Flexible(
                  child: RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: notification.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                            )
                        ),
                        TextSpan(
                            text: notification.content,
                            style: const TextStyle(
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: notification.timeAgo,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                        ),
                      ],
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}