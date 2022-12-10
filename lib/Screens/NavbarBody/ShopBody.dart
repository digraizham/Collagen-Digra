import 'package:flutter/material.dart';

class ShopBody extends StatefulWidget {
  const ShopBody({super.key});

  @override
  _ShopBody createState() => _ShopBody();
}

class _ShopBody extends State<ShopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 6,
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
    );
  }
}
