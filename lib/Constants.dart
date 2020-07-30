import 'package:flutter/material.dart';

const kIdDecorationTextStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
//  icon: Icon(
//    Icons.location_city,
//    color: Colors.white,
//  ),
  hintText: 'Enter User ID here',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kPassDecorationTextStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
//  icon: Icon(
//    Icons.location_city,
//    color: Colors.white,
//  ),
  hintText: 'Enter your password here',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Spartan MB',
  letterSpacing: 1.5,
  //decoration: Curves.decelerate,
);
