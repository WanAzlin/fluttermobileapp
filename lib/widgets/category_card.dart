import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.title, this.description, this.image});

  final String title;
  final String? description;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      width: 150,
      height: 100,
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.grey,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
          Text(
            description ?? '',
            style: const TextStyle(
                color: Color.fromARGB(255, 11, 7, 7), fontSize: 10),
          ),
          SizedBox(
            height: 50.0,
            child: image,
          ),
        ],
      ),
    );
  }
}
