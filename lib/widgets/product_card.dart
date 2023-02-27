// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unagi_app/utills/formatter.dart';

// import 'package:flutter_svg/flutter_svg.dart';
class ProductCard extends StatelessWidget {
  final int id;
  final String name;
  final double price;
  final String image;
  final String condition;
  final int dicsountPercentage;
  final int rating;

  const ProductCard(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.condition,
      required this.dicsountPercentage,
      required this.rating,
      Key? key})
      : super(key: key);

  // void viewProductDetails(String productId, BuildContext context) {
  //   List<Product> product = context
  //       .read<ProductsProvider>()
  //       .getProducts
  //       .where((product) => product.id == productId)
  //       .toList();

  //   Map<String, dynamic> productData = {
  //     "id": product[0].id,
  //     "title": product[0].name,
  //     "description": product[0].description,
  //     "price": product[0].price,
  //     "category": product[0].category,
  //     "imagePath": product[0].image,
  //     "isFavourite": product[0].isFavourite,
  //   };

  //   Navigator.of(context).pushNamed("/product-details", arguments: productData);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2), width: 0.5)),
      child: FittedBox(
        child: InkWell(
          onTap: () {
            debugPrint("$id");
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
                        child: Image.network(image),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white10,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: const TextStyle(fontSize: 18),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '\$${Formatter.currecyFormat(price)}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
