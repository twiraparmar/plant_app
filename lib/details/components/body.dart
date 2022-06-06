import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/details/components/title_and_country.dart';

import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20))),
                    onPressed: () {},
                    color: kPrimaryColor,
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              Expanded(
                  child: FlatButton(
                      onPressed: () {}, child: const Text("Description")))
            ],
          ),
        ],
      ),
    );
  }
}
