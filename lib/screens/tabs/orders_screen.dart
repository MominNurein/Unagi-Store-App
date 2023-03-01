import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  String data = "";

  Future<void> fetchData() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    debugPrint(responseData.toString());

    setState(() {
      data = responseData.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: RefreshIndicator(
        onRefresh: (() async => fetchData()),
        child: ListView(
          children: [
            Center(
              child: Container(
                child: data != ""
                    ? Text(data)
                    : const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
