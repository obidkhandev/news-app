import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = [
    "Popular",
    "All",
    "Politics",
    "Tech",
    "Healty",
    "Sciense",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: index == selectedCategory
                    ? Colors.black
                    : Colors.black.withOpacity(.4),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 4,
              width: categories[index].length.toDouble() * 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: index == selectedCategory
                    ? Colors.blue
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
