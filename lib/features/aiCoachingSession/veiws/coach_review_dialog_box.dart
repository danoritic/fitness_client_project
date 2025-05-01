import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoachReviewDialogBox extends StatefulWidget {
  const CoachReviewDialogBox({super.key});

  @override
  State<CoachReviewDialogBox> createState() => _CoachReviewDialogBoxState();
}

class _CoachReviewDialogBoxState extends State<CoachReviewDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyContainer(
                        height: 350,
                        radius: 50,
                        backgroundColor: usedAppColor.Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                child: Image.asset(
                                    "assets/images/runningWomanDialogImage.png"),
                              ),
                              Center(
                                child: FancyText("Review Submitted!",
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              FancyText(
                                "Your review is successfully submitted to our system. Thanks for review!",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  // weight: FontWeight.bold,
                                  //   size: 24,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: getFigmaColor("F97316"),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Great, thanks",
                                        textColor: usedAppColor.Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(
                                        Icons.check,
                                        color: usedAppColor.Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FancyContainer(
                    backgroundColor: getFigmaColor("F3F3F4"),
                    width: 40,
                    height: 40,
                    radius: 20,
                    child: const Icon(Icons.close),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
