import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Color getFigmaColor(String value, [int percentageOpacity = 100]) {
  return Color(int.parse("0xff$value"))
      .withAlpha((((255 * percentageOpacity) ~/ 100)));
}

emptyListWidgetReturningFunction(BuildContext context,
    {double? height, double? width, String? message, TextStyle? textStyle}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Image.asset(
          'assets/images/emptyImage.png',
          width: width,
          height: height,
        ),
      ),
      Center(
        child: Column(
          children: [
            Text(
              "oops",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .1,
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              message ?? "Empty List",
              textAlign: TextAlign.center,
              style: textStyle ??
                  TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .04,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
            ),
          ],
        ),
      )
    ],
  );
}

Widget faultyImgaeDefault({double? size, Color? color}) {
  return Icon(
    Icons.person,
    size: size,
    color: color ?? Colors.black.withAlpha(100),
  );
}

Color getWhiterVersion(Color color, [double percent = 60]) {
  //getWhiterVersion getFigmaColor("F97316")
  print("sdsdjbsdksbsjjksbkab${color.red}");
  final increment = 1 + percent / 100;
  print("sdsdjbsdksbsjjksbkab-increment${increment}");
  int redness = (color.red * increment).toInt();

  if (redness > 255) redness = 255;
  int greenness = (color.green * increment).toInt();
  if (greenness > 255) greenness = 255;
  int blueness = (color.blue * increment).toInt();
  if (blueness > 255) blueness = 255;
  print("sdsdjbsdksbsjjksbkab-rgb${[redness, greenness, blueness]}");
  return Color.fromRGBO(redness, greenness, blueness, color.opacity);
}

String formatDateTimeToTimeWitAM(DateTime dateTime) {
  // output like 02:21 AM
  print(dateTime);
  final formatter = DateFormat('hh:mm a');
  return formatter.format(dateTime);
}

changeAppThemeMode(bool toDark) {
  usedAppColor = toDark ? AppColorsDarkVersion() : AppColorsLightVersion();
}
