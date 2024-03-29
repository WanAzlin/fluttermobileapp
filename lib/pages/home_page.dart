import 'package:flutter/material.dart';
import 'package:myapp/widgets/category_card.dart';
import 'package:myapp/widgets/category_section.dart';
import 'package:myapp/widgets/image_category_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 20.0,
        ),
        const TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search), labelText: 'Search'),
        ),
        const SizedBox(
          height: 20.0,
        ),
        CategorySection(
          title: "Trending Categories",
          categories: [
            CategoryCard(
              title: "Vegitable",
              description: "hot Item",
              image: Image.asset('images/sayur.png'),
            ),
            CategoryCard(
              title: "Fruits",
              description: "Sale Promotion",
              image: Image.asset('images/fruit.png'),
            ),
            CategoryCard(
              title: "Meats",
              description: "hot Item",
              image: Image.asset('images/fruit.png'),
            ),
            const CategoryCard(title: "Card 4"),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        CategorySection(
          title: "Flash Sale",
          categories: [
            ImageCategoryCard(
              image: Image.asset('images/1.png'),
              title: 'Minyak Saji 1KG',
              description: '220 ml',
              price: 19.9,
              onAddToCart: () {
                print('Minyak Saji 1KG');
              },
            ),
            ImageCategoryCard(
              image: Image.asset('images/1.png'),
              title: 'Paparich White Coffee',
              description: '20 Sticks Per Pack',
              price: 19.9,
              onAddToCart: () {
                print('Minyak Saji 1KG');
              },
            ),
            ImageCategoryCard(
              image: Image.asset('images/1.png'),
              title: 'Maggie Kari ',
              description: '5+1 Packs',
              price: 19.9,
              onAddToCart: () {
                print('Minyak Saji 1KG');
              },
            ),
          ],
        ),
      ],
    );
  }
}
