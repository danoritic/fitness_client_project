import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoachTalkSessionEndedPage extends StatefulWidget {
  const CoachTalkSessionEndedPage({super.key});

  @override
  State<CoachTalkSessionEndedPage> createState() =>
      _CoachTalkSessionEndedPageState();
}

class _CoachTalkSessionEndedPageState extends State<CoachTalkSessionEndedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      color: getFigmaColor("FFEDD5"),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.check_rounded,
                    color: getFigmaColor("F97316"),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Session Ended",
                  style: GoogleFonts.workSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Your coaching session has ended! 🎉",
                  style: GoogleFonts.workSans(
                    fontSize: 14,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                _buildSuggestedNutritionAndSuplement(),
                SizedBox(height: 20),
                _buildAIRecommendations(),
                SizedBox(height: 10),
                FancyContainer(
                  backgroundColor: Colors.black,
                  height: 40,
                  radius: 10,
                  isContinousBorder: false,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyText(
                        "Continue",
                        // "Human Coach",
                        // textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          // weight: FontWeight.bold,
                          //   size: 24,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                          height: 25, child: buildTailedAppArrow(isLeft: false))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Column _buildSuggestedNutritionAndSuplement() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Suggested Nutrition & Supplements",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            FancyContainer(
              backgroundColor: getFigmaColor("D7D8D9"),
              radius: 20,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.question_mark_outlined,
                  size: 14,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        FancyContainer(
          radius: 40,
          // height: 217,
          backgroundColor: getFigmaColor("f3f3f4"),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FancyContainer(
                  height: 30,
                  width: 30,
                  radius: 30,
                  isContinousBorder: false,
                  child: Image.asset("assets/images/maleCommentatorImage.png"),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FancyText("Creatine A-12X",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        )
                        // textColor: getFigmaColor("676C75"),
                        ),
                    const SizedBox(height: 1),
                    _buildIconImageDotRepeat()
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.notifications,
                  color: getFigmaColor("BABBBE"),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _buildAIRecommendations() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "AI Recommendations",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            FancyText(
              "See All",
              rawTextStyle: GoogleFonts.workSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: getFigmaColor("F97316")),
            ),
          ],
        ),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyContainer(
                    radius: 40,
                    // height: 217,
                    backgroundColor: getFigmaColor("f3f3f4"),
                    nulledAlign: true,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
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
                              FancyText("Creatine A-12X",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  )
                                  // textColor: getFigmaColor("676C75"),
                                  ),
                              const SizedBox(height: 1),
                              FancyText("2,500ml/day",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )
                                  // textColor: getFigmaColor("676C75"),
                                  ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }

  Row _buildIconImageDotRepeat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FancyText(
          "30mg",
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
        FancyText(
          "After Eating",
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
        FancyText(
          "2x Pill",
          weight: FontWeight.w500,
          size: 10,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }
}
