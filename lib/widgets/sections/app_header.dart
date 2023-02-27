import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:unagi_app/screens/secondary/wishlist_screen.dart';

import '../../screens/secondary/search_screen.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 7)
                      ]),
                  child: InkWell(
                    onTap: () => PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const WishlistScreen(),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.slideRight,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                  )),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.speaker_phone_sharp,
                      color: primaryColor,
                      size: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "UnagiShop",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.7)),
                        ),
                        Text(
                          "Buy . Sell . Recycle",
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () => debugPrint("Notifications Route"),
                icon: const Icon(Icons.notifications),
                color: primaryColor,
                iconSize: 30,
              )
            ],
          ),
          GestureDetector(
            onTap: () => {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const SearchScreen(),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              )
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: const [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                  Text(
                    "What are you looking for ?",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w100),
                  )
                ]),
              ),
              // TextField(
              //   style: TextStyle(
              //       color: Colors.grey[600], decoration: TextDecoration.none),
              //   onTap: null,
              //   // enabled: false,
              //   decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Colors.grey.withOpacity(0.12),
              //       hintText: "What are you looking for ?",
              //       hintStyle: const TextStyle(
              //           color: Colors.black45, fontWeight: FontWeight.w100),
              //       prefixIcon: const Icon(
              //         CupertinoIcons.search,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       floatingLabelAlignment: FloatingLabelAlignment.start,
              //       enabledBorder: OutlineInputBorder(
              //           borderSide: const BorderSide(
              //             color: Colors.transparent,
              //             width: 0,
              //           ),
              //           borderRadius: BorderRadius.circular(20)),
              //       focusedBorder: OutlineInputBorder(
              //           borderSide: const BorderSide(
              //             color: Colors.transparent,
              //             width: 0,
              //           ),
              //           borderRadius: BorderRadius.circular(30)),
              //       contentPadding: EdgeInsets.zero
              //       // border: InputBorder.none
              //       ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
