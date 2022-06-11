import 'package:flutter/cupertino.dart';
import 'package:fookfood/core/utils/appcolor.dart';

class AppThemes {
  static const appLightTheme =  CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.mainColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    textTheme: CupertinoTextThemeData(
      primaryColor: AppColors.mainColor
    /*  textStyle: AppFonts.headline2,
      actionTextStyle: AppFonts.headline2,
      tabLabelTextStyle: AppFonts.headline2,
      navTitleTextStyle: AppFonts.headline2,
      navLargeTitleTextStyle: AppFonts.headline1,
      navActionTextStyle: AppFonts.headline2,
      pickerTextStyle: AppFonts.headline2,
      dateTimePickerTextStyle: AppFonts.headline2,*/
    ),
  );
}

