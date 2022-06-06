import 'package:plant_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/details/details_screen.dart';
import 'package:plant_app/screens/home/header_with_seachbar.dart';
import 'package:plant_app/screens/home/title_with_more_btn.dart';

class RecommenPallete extends StatelessWidget {
  const RecommenPallete({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommndedPlanCard(
              title: "Samantha",
              image: "assets/image/image_1.png",
              country: "Russia",
              price: 440,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsOfData()));
              }),
          RecommndedPlanCard(
              title: "Vichora",
              image: "assets/image/image_2.png",
              country: "England",
              price: 767,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsOfData()));
              }),
          RecommndedPlanCard(
              title: "Georgeia",
              image: "assets/image/image_3.png",
              country: "NeatherLand",
              price: 974,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsOfData()));
              }),
        ],
      ),
    );
  }
}

class RecommndedPlanCard extends StatelessWidget {
  const RecommndedPlanCard({
    Key? key,
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, image, country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () => press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$title\n",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ]),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
