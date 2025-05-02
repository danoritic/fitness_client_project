import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FindFitnessCoachPage extends StatefulWidget {
  FindFitnessCoachPage({super.key});

  @override
  State<FindFitnessCoachPage> createState() => _FindFitnessCoachPageState();
}

class _FindFitnessCoachPageState extends State<FindFitnessCoachPage> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/mapImage.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: FancyContainer(
                height: MediaQuery.of(context).size.height * .5,
                gradient: LinearGradient(
                  colors: [
                    usedAppColor.white.withAlpha(0),
                    usedAppColor.white.withAlpha(100),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FancyContainer(
                height: MediaQuery.of(context).size.height * .5,
                gradient: LinearGradient(
                  colors: [
                    usedAppColor.black.withAlpha(100),
                    usedAppColor.black.withAlpha(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTopBar(context),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: FancyContainer(
                    radius: 40,
                    // height: 217,
                    backgroundColor: usedAppColor.white,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FancyContainer(
                                height: 48,
                                width: 48,
                                radius: 30,
                                isContinousBorder: false,
                                child: Image.asset(
                                    "assets/images/maleCommentatorImage.png"),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FancyText("Casca Smith",
                                                rawTextStyle:
                                                    GoogleFonts.workSans(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                )
                                                // textColor: usedAppColor.Color676C75,
                                                ),
                                            SizedBox(height: 10),
                                            _buildIconImageDotRepeat(),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    FancyText(
                                      "211 Elementary Avenue\nSan Fransisco, SF Bay Area\nCalifornia, CA 99481",
                                      maxLine: 3,
                                      weight: FontWeight.w500,
                                      size: 14,
                                      textColor: usedAppColor.Color676C75,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          FancyContainer(
                            height: 40,
                            backgroundColor: usedAppColor.black,
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
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 58.0,
                left: 10,
                right: 10,
              ),
              child: FancyContainer(
                height: 45,
                radius: 15,
                isContinousBorder: false,
                backgroundColor: getFigmaColor("FFEDD5"),
                hasBorder: true,
                borderColor: getFigmaColor("F97316"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: Image.asset("assets/images/alertIcon.png")),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      FancyText(
                        "Move map to discover fitness coach.",
                        weight: FontWeight.w700,
                        size: 12,
                        // textColor: usedAppColor.Color676C75,
                      ),
                    ],
                  ),
                ),
              ).animate().fadeIn().then(delay: 5.seconds).fadeOut(),
            )
          ],
        ));
  }

  Row _buildIconImageDotRepeat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child: Image.asset("assets/images/insightIcon-dumbell.png")),
        SizedBox(width: 5),
        FancyText(
          "Strength Expert",
          weight: FontWeight.w500,
          size: 12,
          textColor: usedAppColor.Color676C75,
        ),
        SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-star.png")),
        SizedBox(width: 5),
        FancyText(
          "4.8",
          weight: FontWeight.w500,
          size: 12,
          textColor: usedAppColor.Color676C75,
        ),
        SizedBox(width: 5),
        FancyText(
          "(28)",
          weight: FontWeight.w800,
          size: 12,
          // textColor: usedAppColor.Color676C75,
        ),
      ],
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor:usedAppColor.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FancyText(
                  "Find Fitness Coach",
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
                child: Padding(
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
