import 'package:fitness_client_project/utils/theme/theme.dart';
import 'package:flutter/material.dart';

bool isDark = false;
AppColors usedAppColor = AppColors();

final rootNavigatorKey = GlobalKey<NavigatorState>();

List<Map> paymentProviderList = [
  {
    "name": "Amazon Pay",
    "image": "assets/images/paymentMethodLogo-AmazonPay.png"
  },
  {
    "name": "Apple Pay",
    "image": "assets/images/paymentMethodLogo-ApplePay.png"
  },
  {
    "name": "Google Pay",
    "image": "assets/images/paymentMethodLogo-GooglePay.png"
  },
  {
    "name": "Mastercard",
    "image": "assets/images/paymentMethodLogo-Mastercard.png"
  },
  {"name": "Visa", "image": "assets/images/paymentMethodLogo-visa.png"},
];
