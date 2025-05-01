import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeartRatePage extends StatefulWidget {
  const HeartRatePage({super.key});

  @override
  State<HeartRatePage> createState() => _HeartRatePageState();
}

class _HeartRatePageState extends State<HeartRatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildTopBar(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyText(
                    "112",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyText(
                    "bpm",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: getFigmaColor("676C75"),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FancyText(
                "Currently doing: Boxing",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 17,
                  // fontWeight: FontWeight.bold,
                  color: getFigmaColor("676C75"),
                ),
              ),
            ),
            Expanded(
                child: FancyContainer(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/sporty_woman.png",
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: FancyContainer(
                          height: 50,
                          width: 50,
                          radius: 15,
                          isContinousBorder: false,
                          hasBorder: true,
                          borderColor: usedAppColor.Colors.white.withAlpha(200),
                          borderThickness: 4,
                          backgroundColor: Colors.black,
                          child: const Icon(Icons.add,
                              color: usedAppColor.Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AspectRatio(
                                aspectRatio: 167 / 108,
                                child: FancyContainer(
                                  // height: 50,
                                  // width: 50,
                                  radius: 20,
                                  shadows: List.filled(
                                    4,
                                    BoxShadow(
                                      offset: const Offset(5, 5),
                                      blurRadius: 10,
                                      color: Colors.grey[300]!,
                                    ),
                                  ),
                                  isContinousBorder: false,

                                  backgroundColor: usedAppColor.Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            FancyText(
                                              "Pressure",
                                              rawTextStyle:
                                                  GoogleFonts.workSans(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                // color: getFigmaColor("676C75"),
                                              ),
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/strongWomanPageIcon-heartBeat.png"),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              child: FancyText(
                                                "112",
                                                rawTextStyle:
                                                    GoogleFonts.workSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FancyText(
                                                "mmHg",
                                                rawTextStyle:
                                                    GoogleFonts.workSans(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      getFigmaColor("676C75"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AspectRatio(
                                aspectRatio: 167 / 108,
                                child: FancyContainer(
                                  // height: 50,
                                  // width: 50,
                                  radius: 20,
                                  isContinousBorder: false,

                                  backgroundColor: usedAppColor.Colors.white,
                                  shadows: List.filled(
                                    4,
                                    BoxShadow(
                                      offset: const Offset(5, 5),
                                      blurRadius: 10,
                                      color: Colors.grey.withAlpha(100),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            FancyText(
                                              "Oxygen",
                                              rawTextStyle:
                                                  GoogleFonts.workSans(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                // color: getFigmaColor("676C75"),
                                              ),
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              height: 15,
                                              child: Image.asset(
                                                  "assets/images/strongWomanPageIcon-dropPlus.png"),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              child: FancyText(
                                                "95",
                                                rawTextStyle:
                                                    GoogleFonts.workSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FancyText(
                                                "SpO2",
                                                rawTextStyle:
                                                    GoogleFonts.workSans(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      getFigmaColor("676C75"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: usedAppColor.Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              // FancyContainer(
              //   // height: 30,
              //   // width: 30,
              //   radius: 20,
              //   action: () {
              //     print("sassasasas");
              //   },
              //   // backgroundColor: Colors.grey[300],
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "HeartRate",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FancyContainer(
                height: 30,
                width: 30,
                radius: 20,
                backgroundColor: Colors.grey[300],
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.settings_outlined,
                    weight: .2,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
