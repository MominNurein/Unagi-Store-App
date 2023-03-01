import 'package:flutter/material.dart';
import 'package:unagi_app/graphql/controllers/categories_controller.dart';
import 'package:unagi_app/graphql/controllers/products_controller.dart';
import 'package:unagi_app/models/category.dart';
import 'package:unagi_app/models/product.dart';

import '../../widgets/sections/app_header.dart';
import '../../widgets/sections/carousel.dart';
import '../../widgets/sections/categories_slider.dart';
import '../../widgets/sections/trending_products.dart';
import '../../widgets/shimmers/categories_shimmer.dart';
import '../../widgets/shimmers/products_shimmer.dart';

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

  void refresh() async {
    setState(() {
      categories = [];
      products = [];
    });
    // _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: RefreshIndicator(
          onRefresh: () async => _loadData(),
          child: SingleChildScrollView(
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
                      "Newest Products",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                child: products.isEmpty
                    ? const ProductsShimmer()
                    : TrendingProducts(products: products),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Special Offer",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
