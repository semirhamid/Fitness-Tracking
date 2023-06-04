import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/api_urls.dart';
import '../../../domain/diet/diet.dart';

class DietDetailScreen extends StatelessWidget {
  final Diet meal;
  const DietDetailScreen(this.meal, {super.key});

  final String tag = 'tag';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: tag,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    child: Image.network(
                      ApiUrls.getImage + meal.imageUrl,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    onTap: () {
                      context.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "",
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(231, 241, 255, 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(right: 55.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Energy Expediture',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.blueGrey[600]),
                                  ),
                                  Text(
                                    ' kcal/min',
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Center(
                        child:
                            Text('Contents: ', style: TextStyle(fontSize: 22)),
                      ),
                      SingleChildScrollView(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            height: 350,
                            child: Column(
                              children: [const Text("abebe")],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
