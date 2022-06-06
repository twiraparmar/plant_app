import 'package:flutter/material.dart';

import '../../constant.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
  }) : super(key: key);
  final String title, country;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: kPrimaryColor, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: '$country',
                    style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w300))
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$440",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
