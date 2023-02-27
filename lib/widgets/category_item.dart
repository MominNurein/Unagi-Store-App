import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const CategoryItem(
      {required this.categoryName, required this.categoryImage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                // border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(categoryImage),
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            categoryName,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
