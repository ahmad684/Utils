// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppColors {
  static Color SHIMMER_BASE_COLOR = Colors.grey;
  static Color SHIMMER_HIGHLIGHT_COLOR = Colors.white;
  static Color PRIMARY_COLOR = const Color(0xff00CCBB);
  static Color SECOND_PRIMARY_COLOR = const Color(0xffB620E0);

  static Color SPLASH_COLOR_01 = const Color.fromRGBO(255, 70, 79, 1);
  static Color SPLASH_COLOR_02 = const Color.fromRGBO(255, 138, 52, 1);
  static Color SPLASH_COLOR_03 = const Color.fromRGBO(255, 188, 37, 1);
  static Color SPLASH_COLOR_04 = const Color.fromRGBO(37, 198, 133, 1);
  static Color SPLASH_COLOR_05 = const Color.fromRGBO(0, 93, 242, 1);

  static Color MARKET_COLOR1 = const Color(0xffff6600);
  static Color MARKET_COLOR2 = const Color(0xff2a5e98);
  static Color MARKET_COLOR3 = const Color(0xff9f2878);
  static Color MARKET_COLOR4 = const Color(0xff5d47b4);
  static Color MARKET_COLOR5 = const Color(0xff1d5964);
  static Color PINK = const Color(0xfffc8eac);
  static Color WHITE_COLOR = const Color(0xffFFFFFF);
  static Color Cyan_COLOR = const Color(0xFF00CCBC);
  static Color Ride_COLOR = const Color(0xFF0D7DAD);
  static Color Ride_Field_COLOR = const Color(0xFFeef1f8);
  static Color Ride_Secondary = const Color(0xFFE0C154);
  static Color PRIMARY_LIGHT_COLOR = const Color(0xFFD4F5E9);
  static Color BLACK_COLOR = const Color(0xff000000);
  static Color GREY_COLOR = const Color.fromARGB(255, 138, 142, 150);
  static Color BOTTOM_GREY_COLOR = const Color(0xffD4D6D9);
  static Color DARK_GREY_COLOR = const Color(0xFF54545A);
  static Color APPBAR_GREY_COLOR = const Color(0xFFE5E5E5);
  static Color LIGHT_GREY_COLOR = const Color(0xFF98a1ab);
  static Color CATEGORIES_LIGHT_GREY_COLOR = const Color(0xFFF6F6F6);
  static Color DARK_TEXT_COLOR = const Color(0xff000000);
  static Color TRANSPARENT_COLOR = Colors.transparent;
  static Color RED_COLOR = const Color(0xFFDC2E45);

  ///    Food Module Colors

  static Color FOOD_PRIMARY_COLOR = const Color(0xFFFF5C28);
  static Color FOOD_WHITE_COLOR = const Color(0xffFFFFFF);
  static Color FOOD_DARK_TEXT_COLOR = const Color(0xff000000);
  static Color FOOD_DARK_GREY_COLOR = const Color(0xFF54545A);
  static Color FOOD_GREY_COLOR = const Color.fromARGB(255, 138, 142, 150);

  ///    Mart Module Colors

  static Color MART_PRIMARY_COLOR = const Color(0xFF25C685);

  ///    Market Module Colors

  static Color MARTKET_PRIMARY_COLOR = const Color(0xFF25C685);
  static Color MARTKET_WHITE_COLOR = const Color(0xffFFFFFF);
  static Color MARTKET_DARK_TEXT_COLOR = const Color(0xff000000);
  static Color MARTKET_DARK_GREY_COLOR = const Color(0xFF54545A);
  static Color MARTKET_GREY_COLOR = const Color.fromARGB(255, 138, 142, 150);

  ///    Jobs Module Colors

  static Color JOBS_PRIMARY_COLOR = const Color(0xFF005DF2);

  ///    Instant Module Colors

  static Color INSTANT_PRIMARY_COLOR = const Color(0xFFFFBC25);
  static Color INSTANT_WHITE_COLOR = const Color(0xffFFFFFF);
  static Color INSTANT_DARK_TEXT_COLOR = const Color(0xff000000);
  static Color INSTANT_DARK_GREY_COLOR = const Color(0xFF54545A);
  static Color INSTANT_GREY_COLOR = const Color.fromARGB(255, 138, 142, 150);

  ///   Rental Module Colors

  static Color RENTAL_PRIMARY_COLOR = const Color(0xFF57CC96);
  static Color RENTAL_WHITE_COLOR = const Color(0xffFFFFFF);
  static Color RENTAL_DARK_TEXT_COLOR = const Color(0xff000000);
  static Color RENTAL_DARK_GREY_COLOR = const Color(0xFF54545A);
  static Color RENTAL_GREY_COLOR = const Color.fromARGB(255, 138, 142, 150);


}

class AppGradient {
  static Gradient SPLASHSCREEN_GRADIENT = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFFE9F1FF),
      Color(0XFFFFFFFF),
    ],
  );
  static Gradient LANDINGSCREEN_GRADIENT = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xffFAFCFF),
      Color(0xffFEFEFF),
    ],
  );
  static Gradient LOGINSCREEN_GRADIENT = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xff2412A9),
      Color(0XFFFFFFFF),
    ],
  );
  static Gradient Rider_GRADIENT = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.Ride_COLOR.withOpacity(0.3),
      AppColors.Ride_COLOR.withOpacity(0.3),
    ],
  );
}
