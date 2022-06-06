import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/body.dart';
import 'package:plant_app/screens/home/botton_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: const Body(),
      bottomNavigationBar: const BottoNavigation(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          // icon: const Icon(Icons.menu),
          icon: SvgPicture.asset('assets/icons/menu.svg')),
    );
  }
}
