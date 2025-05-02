import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';

class FlowWidget extends StatefulWidget {
  FlowWidgetController? flowWidgetController;
  FlowWidget({super.key, this.flowWidgetController}) {
    flowWidgetController ??= defaultWidgetController;
  }

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget> with TickerProviderStateMixin {
  // late AnimationController lineController;
  // late AnimationController popController;

  @override
  void initState() {
    widget.flowWidgetController!.initialise(this, () {
      if (mounted) {
        setState(() {});
      }
    });

    super.initState();
  }

  String debug = '';
  @override
  Widget build(BuildContext context) {
    return Row(
        children: widget.flowWidgetController!.listOfController.map(
      (headTailWidgetController) {
        if (headTailWidgetController.isEnded) {
          return HeadTailWidget(
            headTailWidgetController: headTailWidgetController,
          );
        }
        return Expanded(
          child: HeadTailWidget(
            headTailWidgetController: headTailWidgetController,
          ),
        );
      },
    ).toList());
  }
}

class HeadTailWidget extends StatefulWidget {
  final HeadTailWidgetController headTailWidgetController;

  const HeadTailWidget({super.key, required this.headTailWidgetController});

  @override
  State<HeadTailWidget> createState() => _HeadTailWidgetState();
}

class _HeadTailWidgetState extends State<HeadTailWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildHeadTailWidget();
  }

  Container _buildHeadTailWidget() {
    return Container(
      // color: Colors.green,
      height: 45,
      child: Stack(
        children: [
          if (widget.headTailWidgetController.isTailVisible)
            Center(
              child: Row(
                children: [
                  widget.headTailWidgetController.isEnded
                      ? _buildLine()
                      : Expanded(child: _buildLine())
                  // _buildLine()
                ],
              ),
            ),
          Align(
            alignment: Alignment.centerRight,
            child: _buildHead(),
          )
        ],
      ),
    );
  }

  SizedBox _buildHead() {
    return SizedBox(
      height: 45,
      width: 45,
      child: widget.headTailWidgetController.isEnded
          ? FancyContainer(
              radius: 40,
              height: 50,
              width: 50,
              isContinousBorder: false,
              backgroundColor: usedAppColor.f97316,
              padding: EdgeInsets.all(15),
              child: widget.headTailWidgetController.popLabel ??
                  Image.asset(
                    "assets/icons/flowIcon1Highlighted.png",
                    // height: 20,
                    // width: 20,
                  ),
            )
          : Stack(
              children: [
                Center(
                  child: FancyContainer(
                    radius: 40,
                    height: 40,
                    width: 40,
                    isContinousBorder: false,
                    backgroundColor: getFigmaColor("EBEAEA"),
                    padding: EdgeInsets.all(10),
                    child: widget.headTailWidgetController.popbgLabel ??
                        Image.asset(
                          "assets/icons/flowIcon1Unhighlighted.png",
                          // height: 20,
                          // width: 20,
                        ),
                  ),
                ),
                FancyContainer(
                  radius: 40,
                  height: 50,
                  width: 50,
                  isContinousBorder: false,
                  backgroundColor: usedAppColor.f97316,
                  padding: EdgeInsets.all(15),
                  child: widget.headTailWidgetController.popLabel ??
                      Image.asset(
                        "assets/icons/flowIcon1Highlighted.png",
                        // height: 20,
                        // width: 20,
                      ),
                )
                    .animate(
                        autoPlay: false,
                        onComplete: (controller) {
                          // controller.repeat();
                        },
                        controller: widget
                            .headTailWidgetController.headAnimationController)
                    .scale(
                      begin: const Offset(0, 0),
                      curve: Curves.bounceOut,
                      // duration: const Duration(seconds: 1)
                    ),
              ],
            ),
    );
  }

  SizedBox _buildLine() {
    return SizedBox(
      height: 3,
      child: Stack(
        children: [
          FancyContainer(
            width: double.infinity,
            height: double.infinity,
            radius: 3,
            backgroundColor: getFigmaColor("EBEAEA"),
            isContinousBorder: false,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: FancyContainer(
              width: double.infinity,
              height: double.infinity,
              radius: 3,
              isContinousBorder: false,
              backgroundColor: usedAppColor.f97316,
            )
                .animate(
                    autoPlay: false,
                    onComplete: (controller) {
                      // controller.repeat();
                    },
                    controller:
                        widget.headTailWidgetController.tailAnimationController)
                .scaleX(
                    begin: 0,
                    // duration: const Duration(seconds: 1),
                    alignment: Alignment.centerLeft),
          )
        ],
      ),
    );
  }
}

class FlowWidgetController {
  final List<HeadTailWidgetController> listOfController;
  Function stateUpdaterFucntion = () {};
  late HeadTailWidgetController currentController;

  FlowWidgetController({
    required this.listOfController,
  }) {
    currentController = listOfController.elementAt(currentIndex);
  }
  Future initialise(
      TickerProviderStateMixin state, Function stateUpdater) async {
    stateUpdaterFucntion = stateUpdater;
    for (HeadTailWidgetController headTailWidgetController
        in listOfController) {
      await headTailWidgetController.initialize(state);
    }
  }

  int currentIndex = 0;
  Future nextPage() async {
    if (currentIndex <= listOfController.length - 1) {
      if (listOfController.last != currentController) {
        currentController = listOfController[currentIndex + 1];
        currentIndex += 1;
      }
      await currentController.animateForward();
    }
    stateUpdaterFucntion.call();
  }

  Future previousPage() async {
    if (listOfController.first != currentController) {
      await currentController.animateBackward();
      currentIndex -= 1;
      currentController = listOfController[currentIndex];
    }
    stateUpdaterFucntion.call();
  }

  gotoIndex(int index) async {
    for (var i = currentIndex; i < index; i++) {
      await nextPage();
      stateUpdaterFucntion.call();
    }
    for (var i = currentIndex; i > index; i--) {
      await previousPage();
      stateUpdaterFucntion.call();
    }
    currentIndex = index;
    // if (currentIndex < index) {
    //   for
    // }
  }

  dispose() {}
}

// class FlowWidgetModel {}

class HeadTailWidgetController {
  AnimationController? tailAnimationController;
  AnimationController? headAnimationController;
  Color? topColor;
  Color? backgroundColor;
  Widget? popContainer;
  Widget? popBackgroundWidget;
  Widget? popLabel;
  Widget? popbgLabel;

  double? tailHeight;
  bool isEnded;

  bool isTailVisible = true;
  HeadTailWidgetController({
    this.tailAnimationController,
    this.headAnimationController,
    this.topColor,
    this.backgroundColor,
    this.popContainer,
    this.popBackgroundWidget,
    this.popLabel,
    this.popbgLabel,
    this.tailHeight,
    this.isTailVisible = true,
    this.isEnded = false,
  }) {
// if (widget.headTailWidgetController.isTailVisible??false)
  }
  Direction direction = Direction.forward;
  initialize(TickerProviderStateMixin state) {
    tailAnimationController ??=
        AnimationController(vsync: state, duration: .5.seconds);
    headAnimationController ??=
        AnimationController(vsync: state, duration: .5.seconds);

    tailAnimationController!.addListener(
      () {
        if (tailAnimationController!.isCompleted) {
          direction;
          if (direction == Direction.forward) {
            headAnimationController!.reset();
            headAnimationController!.forward();
          } else {
            headAnimationController!.reverse();
          }
        }
      },
    );
  }

  Future animateForward() async {
    direction = Direction.forward;
    if (isTailVisible) {
      print("isTailVisible");
      await tailAnimationController?.forward();
    } else {
      await headAnimationController?.forward();
    }
  }

  Future animateBackward() async {
    direction = Direction.reverse;
    await headAnimationController?.reverse();
    if (isTailVisible) {
      await tailAnimationController?.reverse();
    }
    // else {

    // }
  }
}

FlowWidgetController defaultWidgetController =
    FlowWidgetController(listOfController: [
  HeadTailWidgetController(
    popbgLabel: Image.asset("assets/icons/flowIcon1Unhighlighted.png"),
    popLabel: Image.asset("assets/icons/flowIcon1Highlighted.png"),
    isTailVisible: false,
    isEnded: true,
  ),
  HeadTailWidgetController(
    popbgLabel: Image.asset("assets/icons/flowIcon2Unhighlighted.png"),
    popLabel: Image.asset(
      "assets/icons/flowIcon2Highlighted.png",
    ),
  ),
  HeadTailWidgetController(
    popbgLabel: Image.asset("assets/icons/flowIcon3Unhighlighted.png"),
    popLabel: Image.asset("assets/icons/flowIcon3Highlighted.png"),
  ),
]);
