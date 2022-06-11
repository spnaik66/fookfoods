



import 'package:flutter/material.dart';
import 'package:fookfood/core/route/route_name.dart';
import 'package:fookfood/presentation/splashscreen/screen/splash.dart';

class RouteGenerator {
 static  Route<dynamic>? generateRoute(RouteSettings settings) {
    var params = settings.arguments;
    Widget page;
    switch (settings.name) {
      case RouteName.initialRoute:
        page = SplashScreen();
        break;
    }
  }
}