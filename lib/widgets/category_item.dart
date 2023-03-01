import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utills/chacher.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  const CategoryItem(
      {required this.categoryName, required this.categoryImage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6),
      child: Column(
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: CachedNetworkImage(
              cacheManager: Cacher.customCacheManager,
              imageUrl: categoryImage,
              placeholder: (context, url) => SpinKitWave(
                color: Theme.of(context).primaryColor.withOpacity(0.7),
                size: 20.0,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            categoryName,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
