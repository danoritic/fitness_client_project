import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';

class AppColors extends ChangeNotifier {
  static final AppColors _singleton = AppColors._internal();

  factory AppColors() {
    return _singleton;
  }

  AppColors._internal() {}
  // set to light by default
  Color f3f3f4 = getFigmaColor("f3f3f4");
  Color babbbe = getFigmaColor("babbbe");
  Color f97316 = getFigmaColor("f97316");
  Color Color676C75 = getFigmaColor("676C75");
  Color D7D8D9 = getFigmaColor("D7D8D9");
  Color Color9EA0A5 = getFigmaColor("9EA0A5");
  Color white = Colors.white;
  Color black = Colors.black;
  bool isDarkMode = false;

  lighten() {
    f3f3f4 = getFigmaColor("f3f3f4");
    babbbe = getFigmaColor("babbbe");
    f97316 = getFigmaColor("f97316");
    D7D8D9 = getFigmaColor("D7D8D9");
    Color676C75 = getFigmaColor("676C75");
    Color9EA0A5 = getFigmaColor("9EA0A5");

    white = Colors.white;
    black = Colors.black;
    isDarkMode = true;
    notifyListeners();
  }

  darken() {
    f3f3f4 = getFigmaColor("24262B");

    babbbe = getFigmaColor("babbbe");

    f97316 = getFigmaColor("f97316");

    Color676C75 = getFigmaColor("ffffff");
    Color9EA0A5 = getFigmaColor("393C43");
    D7D8D9 = getFigmaColor("393C43");

    white = Colors.black;
    black = Colors.white;
    isDarkMode = false;
    notifyListeners();
  }

  trigger() {
    notifyListeners();
  }
}

// class AppColorsLightVersion extends AppColors {
//   @override
//   Color f3f3f4 = getFigmaColor("f3f3f4");
//   @override
//   Color babbbe = getFigmaColor("babbbe");
//   @override
//   Color f97316 = getFigmaColor("f97316");
//   @override
//   Color Color676C75 = getFigmaColor("676C75");
//   Color D7D8D9 = usedAppColor.D7D8D9;
//   Color white = Colors.white;
//   Color black = Colors.black;
// }

// class AppColorsDarkVersion extends AppColors {
//   @override
//   Color f3f3f4 = getFigmaColor("393C43");
//   @override
//   Color babbbe = getFigmaColor("babbbe");
//   @override
//   Color f97316 = getFigmaColor("f97316");
//   @override
//   Color Color676C75 = getFigmaColor("676C75");
//   Color D7D8D9 = usedAppColor.D7D8D9;
  
//   Color white = Colors.black;
//   Color black = Colors.white;
// }
