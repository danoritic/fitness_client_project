import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingCoachFitnessTrainingPage extends StatefulWidget {
  const UpcomingCoachFitnessTrainingPage({super.key});

  @override
  State<UpcomingCoachFitnessTrainingPage> createState() =>
      _UpcomingCoachFitnessTrainingPageState();
}

class _UpcomingCoachFitnessTrainingPageState
    extends State<UpcomingCoachFitnessTrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyContainer(
                radius: 50,
                backgroundColor: usedAppColor.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyContainer(
                      radius: 40,
                      height: 140,
                      child: Image.asset("assets/images/3dImage-clock.png"),
                    ),
                    Center(
                      child: FancyText("Upcoming Coach Fitness Training!",
                          textAlign: TextAlign.center,
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            // weight: FontWeight.bold,
                            //   size: 24,
                          )),
                    ),
                    FancyText(
                      "Your review is successfully submitted to our system. Thanks for review!",
                      textAlign: TextAlign.center,
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: getFigmaColor("736B66")
                          // weight: FontWeight.bold,
                          //   size: 24,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FancyContainer(
                radius: 40,
                // height: 217,
                backgroundColor: getFigmaColor("f3f3f4"),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          FancyContainer(
                            height: 30,
                            width: 30,
                            radius: 30,
                            isContinousBorder: false,
                            child: Image.asset(
                                "assets/images/maleCommentatorImage.png"),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FancyText("Casca Smith",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  )
                                  // textColor: getFigmaColor("676C75"),
                                  ),
                              const SizedBox(height: 10),
                              _buildIconImage(),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      FancyContainer(
                        backgroundColor: usedAppColor.white,
                        radius: 6,
                        isContinousBorder: false,
                        child: FancyText(
                          "211 Elementary Avenue",
                          maxLine: 3,
                          weight: FontWeight.w500,
                          size: 14,
                          textColor: getFigmaColor("676C75"),
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildIconImageDotRepeat()
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              FancyContainer(
                height: 40,
                backgroundColor: Colors.black,
                radius: 15,
                isContinousBorder: false,
                child: FancyText(
                  "Strength Expert",
                  weight: FontWeight.w800,
                  size: 16,
                  textColor: usedAppColor.white,
                ),
              )
            ],
          ),
        ));
  }

// assets/images/appIcon-dollar.png
  Row _buildIconImageDotRepeat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child: Image.asset("assets/images/appIcon-calendarFilled.png")),
        const SizedBox(width: 5),
        FancyText(
          "10:25 - 11:35 AM",
          weight: FontWeight.w500,
          size: 10,
          textColor: getFigmaColor("676C75"),
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: getFigmaColor("D7D8D9"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child: Image.asset("assets/images/appIcon-dollar.png")),
        const SizedBox(width: 5),
        FancyText(
          "550 USD",
          weight: FontWeight.w500,
          size: 10,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }

  Row _buildIconImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child: Image.asset("assets/images/insightIcon-dumbell.png")),
        const SizedBox(width: 5),
        FancyText(
          "Strength/CORE Expert",
          weight: FontWeight.w500,
          size: 12,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }
}
