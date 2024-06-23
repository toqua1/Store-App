import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/blackFriday2.jpg',
  'assets/images/slider11.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      child:
      Image.asset(item, fit: BoxFit.cover, width: 1000.0,),
    ))
    .toList();