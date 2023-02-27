import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:unagi_app/graphql/controllers/categories_controller.dart';
import 'package:unagi_app/graphql/controllers/products_controller.dart';
import 'package:unagi_app/models/category.dart';
import 'package:unagi_app/models/product.dart';

import '../../widgets/sections/app_header.dart';
import '../../widgets/sections/carousel.dart';
import '../../widgets/sections/categories_slider.dart';
import '../../widgets/sections/trending_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> categories = [];
  List<Product> products = [];

  CategoriesController categoriesController = CategoriesController();
  ProductsController productsController = ProductsController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    categories = await categoriesController.getCategories();
    setState(() {});

    products = await productsController.fetchProducts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            AppHeader(primaryColor: primaryColor),
            Carousel(primaryColor: primaryColor),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: categories.isEmpty
                  ? const CategoryieShimmer()
                  : Center(child: CategoriesSlider(categories: categories)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () =>
                        debugPrint("See All Trending Products Route !"),
                    child: const Text(
                      "see all",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: TrendingProducts(products: products),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Special Offer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/offer_banner.jpg"),
                      fit: BoxFit.cover)),
            ),
          ]),
        ),
      ),
    );
  }
}

class CategoryieShimmer extends StatelessWidget {
  const CategoryieShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(100)),
                  )),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    width: 80,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ],
          ),
          Column(
            children: [
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(100)),
                  )),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    width: 80,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ],
          ),
          Column(
            children: [
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(100)),
                  )),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    width: 80,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ],
          ),
          Column(
            children: [
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(100)),
                  )),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.white.withOpacity(0.6),
                  period: const Duration(seconds: 1),
                  child: Container(
                    width: 80,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
