import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF0C9869);

const kTextColor = Color(0xFF3C4046);

const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;
final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
  ),
  backgroundColor: kPrimaryColor,
);
