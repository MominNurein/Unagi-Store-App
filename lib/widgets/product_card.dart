// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unagi_app/models/product.dart';
import 'package:unagi_app/utills/chacher.dart';
import 'package:unagi_app/utills/formatter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// import 'package:flutter_svg/flutter_svg.dart';
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2), width: 0.5)),
      child: FittedBox(
        child: InkWell(
          splashColor: Theme.of(context).primaryColor.withOpacity(0.20),
          highlightColor: Colors.white.withOpacity(0.7),
          onTap: () {
            debugPrint("${product.id}");
          },
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: FittedBox(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: CachedNetworkImage(
                          cacheManager: Cacher.customCacheManager,
                          imageUrl: product.thumbnail!,
                          placeholder: (context, url) => SpinKitWave(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.7),
                            size: 40.0,
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        width: double.infinity,
                        color: Colors.white10,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name!,
                                style: const TextStyle(fontSize: 18),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '\$${Formatter.currecyFormat(product.price!)}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text("(39)",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ))
                                ],
                              )
                            ]),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
