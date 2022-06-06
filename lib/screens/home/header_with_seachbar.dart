import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constant.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // it will give us the 20% height of the size

      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )),
          child: Row(
            children: [
              Text(
                "Hi Twinkle",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset(
                "assets/image/logo.png",
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 54,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.30))
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                  // Icon(
                  //   Icons.search,
                  //   color: kPrimaryColor.withOpacity(0.5),
                  // )
                  SvgPicture.asset('assets/icons/search.svg')
                ],
              ),
            ))
      ]),
    );
  }
}
