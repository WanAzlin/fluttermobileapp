import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageCategoryCard extends StatelessWidget {
  const ImageCategoryCard(
      {super.key,
      this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.onAddToCart});

  final Image? image;
  final String title;
  final String description;
  final double price;
  final Function onAddToCart;
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
            fontSize: 15.0,
          ),
        ),
        Text(
          description,
          style: const TextStyle(color: Colors.black, fontSize: 10.0),
        ),
        Row(children: [
          Text(
            price.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
          TextButton(
            child: Icon(Icons.add),
            onPressed: onAddToCart(),
          )
          // TextButton.icon(
          //   onPressed: onAddToCart(),
          //   icon: const Icon(Icons.add),
          //   label: const Text('test'),
          // )
        ])
      ],
    );
  }
}
