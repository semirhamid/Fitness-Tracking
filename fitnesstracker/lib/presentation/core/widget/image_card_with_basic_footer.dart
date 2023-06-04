import 'package:flutter/material.dart';

class ImageCardWithBasicFooter extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double? imageWidth;

  const ImageCardWithBasicFooter(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      this.imageWidth});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double localWidth = size.width * 0.75;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: Container(
              width: imageWidth ?? localWidth,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
                image: DecorationImage(
                  image: NetworkImage( image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: imageWidth ?? localWidth,
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            width: imageWidth ?? localWidth,
            margin: const EdgeInsets.only(top: 5.0, bottom: 10),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
