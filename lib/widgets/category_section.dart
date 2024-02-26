import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection(
      {super.key, required this.title, required this.categories});

  final String title;
  final List<Widget> categories;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 30),
          ),
          const TextButton(
            onPressed: null,
            child: Text("View All"),
          )
        ],
      ),
      const SizedBox(height: 20.0),
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories,
        ),
      ),
    ]);
  }
}
