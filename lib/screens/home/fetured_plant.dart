import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlanCard(image: "assets/image/bottom_img_1.png", press: () {}),
          FeaturePlanCard(image: "assets/image/bottom_img_2.png", press: () {}),
        ],
      ),
    );
  }
}

class FeaturePlanCard extends StatelessWidget {
  const FeaturePlanCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.7,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("$image"), fit: BoxFit.cover)),
      ),
    );
  }
}
