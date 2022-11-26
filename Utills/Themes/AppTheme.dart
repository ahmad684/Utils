
import 'package:flutter/material.dart';

import 'AppColors.dart';


// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: AppColors.PRIMARY_COLOR,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: AppColors.PRIMARY_COLOR),
    //textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
       // .apply(bodyColor: AppColors.BLACK_COLOR),
    colorScheme: ColorScheme.light(
      primary: AppColors.PRIMARY_COLOR,
      secondary: AppColors.SECOND_PRIMARY_COLOR,
      error: AppColors.RED_COLOR,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.PRIMARY_COLOR.withOpacity(0.7),
      unselectedItemColor: AppColors.PRIMARY_COLOR.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: AppColors.PRIMARY_COLOR),
      showUnselectedLabels: true,
    ),
  );
}
//
// ThemeData darkThemeData(BuildContext context) {
//   // Bydefault flutter provie us light and dark theme
//   // we just modify it as our need
//   return ThemeData.dark().copyWith(
//     primaryColor: AppColor.kPrimaryColor,
//     scaffoldBackgroundColor: AppColors.BOOS_PRIMARY,
//     appBarTheme: appBarTheme,
//     iconTheme: IconThemeData(color: AppColor.kContentColorDarkTheme),
//     textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
//         .apply(bodyColor: AppColor.kContentColorDarkTheme),
//     colorScheme: ColorScheme.dark().copyWith(
//       primary: AppColors.BOOS_PRIMARY,
//       secondary: AppColor.kSecondaryColor,
//       error: AppColor.kErrorColor,
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: AppColors.BOOS_PRIMARY,
//       selectedItemColor: AppColors.BOOS_PRIMARY,
//       unselectedItemColor: AppColors.BOOS_PRIMARY.withOpacity(0.32),
//       selectedIconTheme: IconThemeData(color: AppColors.BOOS_PRIMARY),
//       showUnselectedLabels: true,
//     ),
//   );
// }

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
