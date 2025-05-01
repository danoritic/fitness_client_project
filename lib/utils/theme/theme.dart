import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';

class AppColors {
  Color f3f3f4 = getFigmaColor("f3f3f4");
  Color babbbe = getFigmaColor("babbbe");
  Color f97316 = getFigmaColor("f97316");
  Color _676C75 = getFigmaColor("f97316");
  Color white = Colors.white;
}

class AppColorsLightVersion extends AppColors {
  @override
  Color f3f3f4 = getFigmaColor("f3f3f4");
  @override
  Color babbbe = getFigmaColor("babbbe");
  @override
  Color f97316 = getFigmaColor("f97316");
  @override
  Color _676C75 = getFigmaColor("f97316");
  Color D7D8D9 = getFigmaColor("D7D8D9");
  Color white = Colors.white;
}

class AppColorsDarkVersion extends AppColors {
  @override
  Color f3f3f4 = getFigmaColor("393C43");
  @override
  Color babbbe = getFigmaColor("babbbe");
  @override
  Color f97316 = getFigmaColor("f97316");
  @override
  Color _676C75 = getFigmaColor("D7D8D9");
  Color D7D8D9 = getFigmaColor("D7D8D9");
  Color white = Colors.black;
}
