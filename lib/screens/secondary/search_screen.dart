import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Column(
            children: [
              // Container(
              //   width: 300,
              //   height: 300,
              //   color: Colors.amber,
              // ),
              // Text("oihohoihoih"),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          color: Colors.grey[600],
                          decoration: TextDecoration.none),
                      onTap: () {},
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.12),
                          hintText: "What are you looking for ?",
                          hintStyle: const TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w100),
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
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10)
                          // border: InputBorder.none
                          ),
                    ),
                  ),
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7), fontSize: 14),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
