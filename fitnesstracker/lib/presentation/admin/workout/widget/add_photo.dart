import 'dart:io';

import 'package:flutter/material.dart';

class AddImageWidget extends StatelessWidget {
  final File? image;
  const AddImageWidget(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        (image == null)
            ? Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 5, color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(5, 5))
                    ]),
                child: const Icon(Icons.fitness_center))
            : Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: ClipOval(
                  child: Image.file(
                    image!,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
        Container(
          padding: const EdgeInsets.fromLTRB(80, 80, 0, 0),
          child: Icon(
            Icons.add_circle,
            color: Colors.grey.shade700,
          ),
        )
      ],
    );
  }
}
