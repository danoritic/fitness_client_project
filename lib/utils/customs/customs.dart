import 'dart:math';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

Widget buildAppArrow({bool isLeft = true, Color? iconColor}) {
  return (isLeft)
      ? Transform.rotate(
          angle: pi,
          child: Image.asset(
            "assets/images/appArrowBetter.png",
            color: iconColor,
          ),
        )
      : Image.asset(
          "assets/images/appArrowBetter.png",
          color: iconColor,
        );
}

Widget buildAppArrowVertical({bool isUp = true, Color? iconColor}) {
  return (isUp)
      ? Transform.rotate(
          angle: pi / 2,
          child: Image.asset(
            "assets/images/appArrowBetter.png",
            color: iconColor,
          ),
        )
      : Transform.rotate(
          angle: -pi / 2,
          child: Image.asset(
            "assets/images/appArrowBetter.png",
            color: iconColor,
          ),
        );
}

Widget buildTailedAppArrow({bool isLeft = true, Color? iconColor}) {
  return (isLeft)
      ? Transform.rotate(
          angle: pi,
          child: Image.asset(
            "assets/images/arrowTailed.png",
            color: iconColor,
          ),
        )
      : Image.asset(
          "assets/images/arrowTailed.png",
          color: iconColor,
        );
}

List<int> practiceFunction(List<int> listOfIndex) {
  /// while ************
  // List<String> result = [];
  // result;
  // while (index > 5) {
  //   result.add("${index}");
  //   index = index - 1;
  // }
  // return result;

  List<int> result = [];
  for (int iter in listOfIndex) {
    if (iter > 4) {
      result.add(iter - 1);
    } else if (iter == 4) {
      result.add(0);
    } else {
      result.add(iter + 1);
    }
  }

  return result;
}

Widget buildBackArrow(BuildContext context,
    {Color? iconColor, Color? backgroundColor}) {
  return FancyContainer(
    radius: 30,
    height: 30,
    width: 30,
    backgroundColor: !(ModalRoute.of(context)?.isFirst ?? true)
        ? backgroundColor ?? Colors.grey[300]
        : null,
    child: Visibility(
      visible: !(ModalRoute.of(context)?.isFirst ?? true),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9.0.w),
        child: FancyContainer(
            action: () {
              Get.back();
            },
            child: buildAppArrow(iconColor: iconColor)),
      ),
    ),
  );
}

class RangeSliderWidget extends StatefulWidget {
  final Function(dynamic, dynamic) functionToUpdateValues;
  const RangeSliderWidget({super.key, required this.functionToUpdateValues});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  double _lowerValue = 15;

  double _upperValue = 50;

  @override
  Widget build(BuildContext context) {
    return RangeSliderFlutter(
      // key: Key('3343'),
      values: [_lowerValue, _upperValue],
      rangeSlider: true,
      tooltip: RangeSliderFlutterTooltip(
        alwaysShowTooltip: true,
        custom: (value) {
          return Text("$value");
        },
      ),
      max: 80,
      textPositionTop: 0, textPositionBottom: -70,
      handlerHeight: 30, textColor: getFigmaColor("676C75"),
      handler: RangeSliderFlutterHandler(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: usedAppColor.Colors.white, width: 3),
          color: getFigmaColor("F97316"),
          boxShadow: List.filled(
            4,
            BoxShadow(
              color: Colors.grey.withAlpha(30),
              offset: Offset(2, 2),
              // spreadRadius: 10,
              blurRadius: 10,
            ),
          ),
        ),
      ),
      rightHandler: RangeSliderFlutterHandler(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: usedAppColor.Colors.white, width: 3),
          color: getFigmaColor("F97316"),
          boxShadow: List.filled(
            4,
            BoxShadow(
              color: Colors.grey.withAlpha(30),
              offset: Offset(2, 2),
              // spreadRadius: 10,
              blurRadius: 10,
            ),
          ),
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: usedAppColor.Colors.white, width: 3),
          color: getFigmaColor("F97316"),
        ),
      ),
      trackBar: RangeSliderFlutterTrackBar(
        activeTrackBarHeight: 10,
        inactiveTrackBarHeight: 10,
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: getFigmaColor("F97316"),
        ),
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
          color: getFigmaColor("F1F1F1"),
        ),
      ),

      min: 0,
      fontSize: 15,
      textBackgroundColor: getFigmaColor("F97316"),
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        widget.functionToUpdateValues.call(lowerValue, upperValue);

        // ageRange[0] = (lowerValue as double).toInt();
        // ageRange[1] = (upperValue as double).toInt();

        if (mounted) setState(() {});
      },
    );
  }
}

Widget buildSideArrowContainer(
    {bool isLeft = true, Color? iconColor, Widget? child}) {
  return (isLeft)
      ? Transform.rotate(
          angle: pi,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/sideArrowContainer.png",
                color: iconColor,
              ),
              child ?? const SizedBox(),
            ],
          ),
        )
      : Stack(
          children: [
            Image.asset(
              "assets/images/sideArrowContainer.png",
              color: iconColor,
            ),
            child ?? const SizedBox(),
          ],
        );
}

// buildSideArrowContainer(){
// assets/images/sideArrowContainer.png
//   return
// }

wrapWithselectedsBorder({
  required Widget child,
  required double radius,
  double spreadRadius = 2,
}) {
  return FancyContainer(
    radius: radius,
    backgroundColor: getFigmaColor("FFEDD5"),
    isContinousBorder: false,
    child: Padding(
      padding: EdgeInsets.all(spreadRadius),
      child: FancyContainer(
        radius: radius,
        isContinousBorder: false,
        hasBorder: true,
        borderColor: getFigmaColor("F97316"),
        child: child,
      ),
    ),
  );
}
