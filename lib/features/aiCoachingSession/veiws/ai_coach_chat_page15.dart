import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class AiCoachChatPage15ImageScan extends StatefulWidget {
  const AiCoachChatPage15ImageScan({super.key});

  @override
  State<AiCoachChatPage15ImageScan> createState() =>
      _AiCoachChatPage15ImageScanState();
}

class _AiCoachChatPage15ImageScanState
    extends State<AiCoachChatPage15ImageScan> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/strongRunningHuman.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            FancyContainer(
              gradient: LinearGradient(
                colors: [
                  usedAppColor.black.withAlpha(100),
                  usedAppColor.black.withAlpha(0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Expanded(child: SizedBox()),
              FancyContainer(
                height: 1,
                width: double.infinity,
                backgroundColor: usedAppColor.f3f3f4,
              ),
              const Expanded(child: SizedBox()),
              FancyContainer(
                height: 1,
                width: double.infinity,
                backgroundColor: usedAppColor.f3f3f4,
              ),
              const Expanded(child: SizedBox()),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(child: SizedBox()),
                FancyContainer(
                  height: double.infinity,
                  width: 1,
                  backgroundColor: usedAppColor.f3f3f4,
                ),
                const Expanded(child: SizedBox()),
                FancyContainer(
                  height: double.infinity,
                  width: 1,
                  backgroundColor: usedAppColor.f3f3f4,
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FancyContainer(
                        height: 110,
                        width: 85,
                        radius: 40,
                        backgroundColor: usedAppColor.white,
                        shadows: List.filled(
                          4,
                          BoxShadow(
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                            color: usedAppColor.black.withAlpha(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                                size: 17,
                              ),
                              FancyText(
                                "76",
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              FancyText(
                                "bpm",
                                size: 14,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ),
                      FancyContainer(
                        height: 110,
                        width: 85,
                        radius: 40,
                        backgroundColor: usedAppColor.white,
                        shadows: List.filled(
                          4,
                          BoxShadow(
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                            color: usedAppColor.black.withAlpha(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 17,
                                child: Image.asset(
                                    "assets/images/imageScanPageBlueIcon.png"),
                              ),
                              // Icon(
                              //   Icons.favorite_rounded,
                              //   color: Colors.red,
                              //   size: 17,
                              // ),
                              FancyText(
                                "57.1",
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                              FancyText(
                                "kilogram",
                                size: 14,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(child: Image.asset("assets/images/scanImage.png")),
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FancyContainer(
                            height: 50,
                            width: 50,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: usedAppColor.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: usedAppColor.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.home_filled,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: FancyContainer(
                            height: 70,
                            width: 70,
                            radius: 22,
                            isContinousBorder: false,
                            backgroundColor: usedAppColor.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: usedAppColor.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.camera_alt_rounded,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FancyContainer(
                            height: 50,
                            width: 50,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: usedAppColor.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: usedAppColor.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.settings_rounded,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            // Center(child: Image.asset("assets/images/scanImage.png")
            //     //  Icon(
            //     //   Icons.document_scanner_rounded,
            //     //   color:usedAppColor.white,
            //     //   size: 220,
            //     // ),
            //     )
          ],
        ),
      ),
    );
  }
}
