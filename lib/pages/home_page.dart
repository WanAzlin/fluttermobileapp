import 'package:flutter/material.dart';
import 'package:myapp/widgets/category_card.dart';
import 'package:myapp/widgets/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Icon(Icons.location_pin, size: 30.0)),
                  Text(
                    "Sungai Buloh",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.add_shopping_cart,
                  size: 30.0,
                ),
              )
            ],
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), labelText: 'Search'),
          ),
          CategorySection(
            title: "Trending Categories",
            categories: [
              CategoryCard(
                title: "Vegitable",
                description: "hot Item",
                image: Image.network(
                  'https://img.freepik.com/free-psd/mix-fruits-png-isolated-transparent-background_191095-9865.jpg?w=1480&t=st=1708782403~exp=1708783003~hmac=f0340be3c1e98572e45abad82144ca7747358ab85afbc9f2e868b49455d436dd',
                ),
              ),
              const CategoryCard(
                title: "Fruits",
                description: "Sale Promotion",
              ),
              const CategoryCard(title: "Card 3"),
              const CategoryCard(title: "Card 4"),
            ],
          ),
          CategorySection(
            title: "Flash Sale",
            categories: [
              ImageCategoryCard(),
              ImageCategoryCard(),
              ImageCategoryCard(),
            ],
          ),
          // Row(
          //   children: [
          //     const Row(
          //       children: [
          //         Text(
          //           "Flash Sale",
          //           style: TextStyle(color: Colors.black, fontSize: 30),
          //         ),
          //         TextButton(
          //           onPressed: null,
          //           child: Text("View All"),
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         SingleChildScrollView(
          //           scrollDirection: Axis.horizontal,
          //           child: Row(
          //             children: [
          //               Container(
          //                 width: 150,
          //                 height: 100,
          //                 decoration: const BoxDecoration(
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(10),
          //                     bottomLeft: Radius.circular(10),
          //                   ),
          //                   color: Colors.grey,
          //                 ),
          //                 child: const Column(
          //                   children: [
          //                     Image(
          //                       image: AssetImage('to be inserted'),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               const Text(
          //                 "Minyak Saji 10KG",
          //                 style: TextStyle(color: Colors.black, fontSize: 30),
          //               ),
          //               const Text(
          //                 "220ml",
          //                 style: TextStyle(color: Colors.grey, fontSize: 10),
          //               ),
          //               const Row(
          //                 children: [
          //                   Text(
          //                     "RM 12.90",
          //                     style: TextStyle(
          //                         color: Colors.black, fontSize: 20.0),
          //                   ),
          //                   Icon(Icons.plus_one_rounded)
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}
