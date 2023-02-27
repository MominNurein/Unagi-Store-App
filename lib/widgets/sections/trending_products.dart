import 'package:flutter/material.dart';
import 'package:unagi_app/models/product.dart';

import '../product_card.dart';

class TrendingProducts extends StatelessWidget {
  final List<Product> products;

  const TrendingProducts({required this.products, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ProductCard(
            id: products[index].id!,
            name: products[index].name!,
            price: products[index].price!,
            image: products[index].thumbnail!,
            condition: products[index].condition!,
            dicsountPercentage: products[index].discountPercentage!.toInt(),
            rating: products[index].rating!),
      ),
    );
  }
}
