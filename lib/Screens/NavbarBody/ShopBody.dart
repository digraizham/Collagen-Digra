import 'package:flutter/material.dart';

import '../AppbarBody/Search.dart';

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  _ShopBody createState() => _ShopBody();
}

class _ShopBody extends State<ShopBody> {
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
              title: const Text("Marketplace"),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              actions: <Widget>[
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
              ],
            ),
          ),
        ),
        body: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 8.0 / 10.0,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/Market.png'),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              )),
                          const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Rp. 9000 ",
                                style: TextStyle(fontSize: 18.0),
                              )),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Ayam Jago + Kandang",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: const <Widget>[
                                Icon(Icons.location_on_outlined),
                                Text("Jakarta Pusat")
                              ],
                            ),
                          ),
                        ],
                      )));
            }),
      ),
    );
  }
}
