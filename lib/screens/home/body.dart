import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/screens/home/fetured_plant.dart';
import 'package:plant_app/screens/home/header_with_seachbar.dart';
import 'package:plant_app/screens/home/recommend_palatte.dart';
import 'package:plant_app/screens/home/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will give us the total height of the screen
    Size size = MediaQuery.of(context).size;

    return RecommendPallette(size: size);
  }
}

class RecommendPallette extends StatelessWidget {
  const RecommendPallette({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      HeaderWithSearch(size: size),
      TitileWithMore(
        title: "Recommeded",
        press: () {},
      ),
      //it will Cover 40% of Our Total width
      RecommenPallete(),
      TitileWithMore(title: "Featured Plants", press: () {}),
      FeaturedPlants(),
      SizedBox(
        height: kDefaultPadding,
      )
    ]));
  }
}
