// ignore_for_file: use_build_context_synchronously

import 'package:bicycle/configuration/routes/navigator.dart';
import 'package:bicycle/core/models/cycles_model.dart';
import 'package:flutter/material.dart';

class AppFunctions {
  static void goToHatsPage() {
    AppNavigator.push(Routes.hats);
  }

  static void goToMountainPage() {
    AppNavigator.push(Routes.mountains);
  }

  static void goToUrbanPage() {
    AppNavigator.push(Routes.urban);
  }

  static void goTodetails({
    required CyclesModel cycle,
  }) {
    AppNavigator.push(Routes.details, arguments: {"cycle": cycle});
  }

  static void goToHomePage() {
    AppNavigator.pushNamedAndRemoveUntil(Routes.home);
  }

  static void pop({int times = 1}) {
    for (var i = 0; i < times; i++) {
      AppNavigator.pop();
    }
  }

  static void popToHome() {
    AppNavigator.popToHome();
  }

  static String formatPrice(String price) {
  if (price.isEmpty) return '';
  
  String formattedPrice = '';
  int length = price.length;
  

  for (int i = length - 1, count = 0; i >= 0; i--, count++) {
    if (count != 0 && count % 3 == 0) {
      formattedPrice = '.' + formattedPrice;
    }
    formattedPrice = price[i] + formattedPrice;
  }
  
  return '\$ $formattedPrice';
}

  static Future<void> unfocusAllFields(BuildContext? context) async {
    if (context == null) return;
    FocusScope.of(context).unfocus();
  }
}
