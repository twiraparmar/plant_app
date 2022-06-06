import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/details/details_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'dart:convert';
import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(primary: kPrimaryColor),
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
