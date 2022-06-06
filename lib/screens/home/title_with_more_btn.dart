// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';

class TitileWithMore extends StatelessWidget {
  const TitileWithMore({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnederLine(text: title),
          Spacer(),
          FlatButton(
            onPressed: press,
            color: kPrimaryColor,
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
          //   TextButton(onPressed: () {},, child: Text('More'))
        ],
      ),
    );
  }
}

class TitleWithCustomUnederLine extends StatelessWidget {
  TitleWithCustomUnederLine({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding / 4),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding / 4),
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        )
      ]),
    );
  }
}
