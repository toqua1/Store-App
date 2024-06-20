import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16= const TextStyle(
      color: Color(0xff292929) ,
      fontSize: 16 ,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w400
  );

  static TextStyle styleRegular14= const TextStyle(
      color: Color(0xff313131) ,
      fontSize: 14 ,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w400
  );

  static TextStyle styleBold14= const TextStyle(
      color: Color(0xff313131) ,
      fontSize: 14 ,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700
  );

  static TextStyle styleBold16= const TextStyle(
      color: Color(0xff292929) ,
      fontSize: 16 ,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700
  );

  static TextStyle styleBold20= const TextStyle(
      color: Color(0xff292929) ,
      fontSize: 20 ,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700
  );

  static TextStyle styleMedium14= const TextStyle(
      color: Color(0xff292929) ,
      fontSize: 14 ,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500
  );

  static TextStyle styleSemiBold22 (){
    return const TextStyle(
        color: Color(0xff292929) ,
        fontSize: 22 ,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w600
    );
  }

}