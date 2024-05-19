import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/beaty.JPG", "text": "Beauty"},
      {"icon": "assets/images/fashion.JPG", "text": "Fashion"},
      {"icon": "assets/images/kids.JPG", "text": "Kids"},
      {"icon": "assets/images/mens.JPG", "text": "Mens"},
      {"icon": "assets/images/women.JPG", "text": "Womens"},
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(icon),
          ),
        ),
        const SizedBox(height: 4),
        Text(text, textAlign: TextAlign.center)
      ],
    );
  }
}