import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
