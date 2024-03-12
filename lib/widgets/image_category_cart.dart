import 'package:flutter/material.dart';

class ImageCategoryCard extends StatelessWidget {
  const ImageCategoryCard(
      {super.key, this.image, required this.title, required this.description});

  final Image? image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 150,
          height: 150,
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.grey,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
                child: image,
              ),
            ],
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
