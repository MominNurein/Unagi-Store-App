import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black.withOpacity(0.6),
          backgroundColor: Colors.white,
          title: Text(
            "Wishlist",
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w600),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: TextField(
                style: TextStyle(
                    color: Colors.grey[600], decoration: TextDecoration.none),
                onTap: () {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.12),
                    hintText: "search a wishlist ...",
                    hintStyle: const TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w100),
                    prefixIcon: const Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 14)
                    // border: InputBorder.none
                    ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: false,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: Colors.black12, width: 2)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage("assets/images/m4.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Iphone 11 pro .",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[700],
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    "SDG 20.500",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text("has sale"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 12),
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 12),
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 12),
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 12),
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 12),
                                      Text("(39)",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 10))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () =>
                                      debugPrint('Remove Item from wishlist !'),
                                  icon: Icon(
                                    CupertinoIcons.trash_fill,
                                    color: Colors.grey,
                                  )),
                              Expanded(
                                child: InkWell(
                                  onTap: () =>
                                      debugPrint("Add wish item to cart !"),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.0),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Add To Cart",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          CupertinoIcons.cart_fill,
                                          color: Theme.of(context).primaryColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
