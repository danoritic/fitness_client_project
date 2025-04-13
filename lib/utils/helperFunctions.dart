import 'package:flutter/material.dart';

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
