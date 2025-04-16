import 'dart:math';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

Widget buildAppArrow({bool isLeft = true}) {
  return (isLeft)
      ? Transform.rotate(
          angle: pi,
          child: Image.asset("assets/images/appArrowBetter.png"),
        )
      : Image.asset("assets/images/appArrowBetter.png");
}

Widget buildBackArrow(BuildContext context) {
  return Visibility(
    visible: !(ModalRoute.of(context)?.isFirst ?? true),
    child: FancyContainer(
      radius: 30,
      height: 30,
      width: 30,
      backgroundColor: Colors.grey[300],
      action: () {
        Get.back();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9.0.w),
        child: buildAppArrow(),
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
          border: Border.all(color: Colors.white, width: 3),
          color: getFigmaColor("F97316"),
        ),
      ),
      rightHandler: RangeSliderFlutterHandler(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 3),
          color: getFigmaColor("F97316"),
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 3),
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
