import 'dart:math';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildAppArrow({bool isLeft = true}) {
  return (isLeft)
      ? Image.asset("assets/images/appArrow.png")
      : Transform.rotate(
          angle: pi,
          child: Image.asset("assets/images/appArrow.png"),
        );
}

Widget buildBackArrow(BuildContext context) {
  return Visibility(
    visible: !(ModalRoute.of(context)?.isFirst ?? true),
    child: FancyContainer(
      radius: 30,
      height: 30,
      width: 30,
      action: () {
        Get.back();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildAppArrow(),
      ),
    ),
  );
}
