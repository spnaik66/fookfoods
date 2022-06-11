import 'package:flutter/material.dart';

class NavigationService{
  GlobalKey<NavigatorState>? navigationKey;

  static NavigationService instance = NavigationService();

  NavigationService(){
    navigationKey = GlobalKey<NavigatorState>();
  }
  Future<dynamic> navigateToReplacement(String _rn){
    return navigationKey!.currentState!.pushReplacementNamed(_rn);
  }
  Future<dynamic> navigateTo(String _rn){
    return navigationKey!.currentState!.pushNamed(_rn);
  }
  goBack(){
    return navigationKey!.currentState!.pop();

  }
}