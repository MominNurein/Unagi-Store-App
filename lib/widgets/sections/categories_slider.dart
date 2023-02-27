import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:unagi_app/graphql/controllers/categories_controller.dart';

import '../../models/category.dart';
import '../category_item.dart';

class CategoriesSlider extends StatelessWidget {
  final List<Category> categories;

  const CategoriesSlider({required this.categories, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: categories.isEmpty
          ? Container(
              color: Colors.red,
              child: const Center(child: Text("Shimmer || ")),
            )
          : ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                ...categories.map(
                  (category) => CategoryItem(
                      categoryName: category.name,
                      categoryImage: category.image),
                )
              ],
            ),
    );
  }
}
