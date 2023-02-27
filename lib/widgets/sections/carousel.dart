import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Carousel extends StatelessWidget {
  const Carousel({required this.primaryColor, Key? key}) : super(key: key);

  final Color primaryColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageSlideshow(
          /// Width of the [ImageSlideshow].
          width: double.infinity,

          /// Height of the [ImageSlideshow].
          height: 180,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: primaryColor,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          ///
          ///
          /// Called whenever the page in the center of the viewport changes.
          // onPageChanged: (value) {
          //   debugPrint('Page changed: $value');
          // },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 4000,

          /// Loops back to first slide.
          isLoop: true,
          children: [
            Image.asset(
              'assets/images/carousel3.jpg',
              fit: BoxFit.cover,
            ),
            GestureDetector(
              onTap: () => debugPrint("Route"),
              child: Image.asset(
                'assets/images/carousel6.jpg',
                fit: BoxFit.cover,
                scale: 15.0,
              ),
            ),
            Image.asset(
              'assets/images/carousel4.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/carousel2.jpg',
              fit: BoxFit.cover,
            ),

            // Image.asset(
            //   'assets/images/carousel3.jpg',
            //   fit: BoxFit.cover,
            // ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: const Text(
            "Free Delivery on orders over SDG 10,000",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
