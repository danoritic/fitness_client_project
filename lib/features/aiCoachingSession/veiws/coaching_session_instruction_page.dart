import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoachingSessionInstructionPage extends StatefulWidget {
  const CoachingSessionInstructionPage({super.key});

  @override
  State<CoachingSessionInstructionPage> createState() =>
      _CoachingSessionInstructionPageState();
}

class _CoachingSessionInstructionPageState
    extends State<CoachingSessionInstructionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: usedAppColor.Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyContainer(
                radius: 40,
                height: 40,
                width: 40,
                backgroundColor: getFigmaColor("FFEDD5"),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/appIcon-alert.png"),
                ),
              ),
              Center(
                child: FancyText("Psst.. Before your coaching session...",
                    textAlign: TextAlign.center,
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      // weight: FontWeight.bold,
                      //   size: 24,
                    )),
              ),
              FancyText(
                "Please ensure the following:",
                textAlign: TextAlign.center,
                rawTextStyle: GoogleFonts.workSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: getFigmaColor("736B66")
                    // weight: FontWeight.bold,
                    //   size: 24,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildInstuctionSlabs(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FancyContainer(
                  radius: 12,
                  isContinousBorder: false,
                  // height: 217,
                  backgroundColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FancyText(
                            "Understood, Join Now",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: usedAppColor.Colors.white

                                //   size: 24,
                                ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.call_outlined,
                            color: usedAppColor.Colors.white,
                            size: 14,
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Column _buildInstuctionSlabs() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: FancyContainer(
            radius: 12,
            isContinousBorder: false,
            // height: 217,
            backgroundColor: getFigmaColor("f3f3f4"),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyText(
                      "Stable connection",
                      textAlign: TextAlign.center,
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: getFigmaColor("736B66")
                          // weight: FontWeight.bold,
                          //   size: 24,
                          ),
                    ),
                    SizedBox.square(
                      dimension: 20,
                      child: Image.asset(
                          "assets/images/preCoachingSection-bars.png"),
                    ),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: FancyContainer(
            radius: 12,
            isContinousBorder: false,
            // height: 217,
            backgroundColor: getFigmaColor("f3f3f4"),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyText(
                      "Well Lit Space",
                      textAlign: TextAlign.center,
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: getFigmaColor("736B66")
                          // weight: FontWeight.bold,
                          //   size: 24,
                          ),
                    ),
                    SizedBox.square(
                      dimension: 20,
                      child: Image.asset(
                          "assets/images/preCoachingSection-ideaIcon.png"),
                    ),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: FancyContainer(
            radius: 12,
            isContinousBorder: false,
            // height: 217,
            backgroundColor: getFigmaColor("f3f3f4"),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyText(
                      "720p Camera",
                      textAlign: TextAlign.center,
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: getFigmaColor("736B66")
                          // weight: FontWeight.bold,
                          //   size: 24,
                          ),
                    ),
                    SizedBox.square(
                      dimension: 20,
                      child: Image.asset(
                          "assets/images/preCoachingSection-camera.png"),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  // "assets/images/preCoachingSection-bars.png"
  // "assets/images/preCoachingSection-camera.png"
  // "assets/images/preCoachingSection-ideaIcon.png"
}
