// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';

import './screens/main_screen.dart';

void main() {
  runApp(const UnagiStoreApp());
}

class UnagiStoreApp extends StatelessWidget {
  const UnagiStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unagi Store',
        theme: ThemeData(
            primaryColor: const Color(0XFF23B7E3),
            accentColor: Colors.white10,
            fontFamily: "Poppins"),
        themeMode: ThemeMode.light,
        home: const MainScreen());
  }
}
