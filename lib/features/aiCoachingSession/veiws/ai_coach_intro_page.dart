import 'package:fitness_client_project/utils/utils.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachIntroPage extends StatefulWidget {
  const AiCoachIntroPage({super.key});

  @override
  State<AiCoachIntroPage> createState() => _AiCoachIntroPageState();
}

class _AiCoachIntroPageState extends State<AiCoachIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/female_robot.png",
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FancyContainer(
                        backgroundColor: Colors.orange,
                        // height: 40,
                        nulledAlign: true,
                        isContinousBorder: false,
                        radius: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.warning_rounded,
                                color: getFigmaColor("FED7AA"),
                              ),
                              SizedBox(width: 7),
                              FancyText(
                                "Get Up Now!",
                                size: 16,
                                textColor: usedAppColor.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: FancyContainer(
                        backgroundColor: getFigmaColor("9333EA"),
                        // height: 40,
                        nulledAlign: true,
                        isContinousBorder: false,
                        radius: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.directions_run_rounded,
                                color: getFigmaColor("E9D5FF"),
                              ),
                              SizedBox(width: 7),
                              FancyText(
                                "Get Up Now!",
                                size: 16,
                                textColor: usedAppColor.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FancyContainer(
                        backgroundColor: getFigmaColor("2563EB"),
                        // height: 40,
                        nulledAlign: true,
                        isContinousBorder: false,
                        radius: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child:
                                    Image.asset("assets/images/alarmClock.png"),
                              ),
                              // Icon(
                              //   Icons.alarm,
                              //   color: getFigmaColor("BFDBFE"),
                              // ),
                              SizedBox(width: 7),
                              FancyText(
                                "Do 588 Reps!",
                                size: 16,
                                textColor: usedAppColor.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        FancyText(
                          "Meet Your AI Fitness Coach.",
                          textAlign: TextAlign.center,
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        FancyText(
                          "Elevate your training with AI fitness coach.",
                          textAlign: TextAlign.center,
                          rawTextStyle: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: getFigmaColor("676C75")),
                        ),
                        SizedBox(height: 20),
                        FancyContainer(
                          backgroundColor: Colors.black,
                          // height: 40,
                          // nulledAlign: true,
                          isContinousBorder: false,
                          radius: 10,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FancyText(
                                  "Get Up Now!",
                                  size: 16,
                                  textColor: usedAppColor.white,
                                ),
                                SizedBox(width: 7),
                                Icon(
                                  Icons.search,
                                  color: usedAppColor.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
