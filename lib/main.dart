import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'package:fookfood/core/route/genrator.dart';
import 'package:fookfood/core/route/navigator.dart';
import 'package:fookfood/core/route/route_name.dart';
import 'package:fookfood/core/utils/themes.dart';
import 'package:fookfood/presentation/splashscreen/screen/splash.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp( FoodAppState());
}

class FoodAppState extends StatefulWidget {
  const FoodAppState({Key? key}) : super(key: key);

  @override
  State<FoodAppState> createState() => _FoodAppStateState();
}

class _FoodAppStateState extends State<FoodAppState> {
  StreamSubscription?   networkCheck;



  @override
  void initState() {

    super.initState();

  }

  get(){
    NavigationService.instance!.navigateTo(RouteName.initialRoute);
  }

  @override
  Widget build(BuildContext context) {
    return  CupertinoApp(
       title: 'Foodfook',
        theme: AppThemes.appLightTheme,
        debugShowCheckedModeBanner: false,
      navigatorKey:  NavigationService.instance.navigationKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      home:  SplashScreen(),

    );
  }
}
