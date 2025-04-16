import 'dart:math';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
