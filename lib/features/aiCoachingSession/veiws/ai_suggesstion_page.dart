import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiSuggesstionPage extends StatefulWidget {
  const AiSuggesstionPage({super.key});

  @override
  State<AiSuggesstionPage> createState() => _AiSuggesstionPageState();
}

class _AiSuggesstionPageState extends State<AiSuggesstionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  buildBackArrow(context),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        FancyText(
                          "AI Suggestions",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        FancyContainer(
                          // height: 15,
                          radius: 30,
                          nulledAlign: true,
                          backgroundColor: getFigmaColor("D7D8D9"),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.question_mark_rounded,
                              color: usedAppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FancyText(
                      "Here you can see our suggestions that can improve your overall fitness score.",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 13,
                        // fontWeight: FontWeight.bold,
                        color: getFigmaColor("676C75"),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        FancyText(
                          "All Suggestions ",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FancyText(
                          "(20)",
                          rawTextStyle: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: getFigmaColor("676C75")),
                        ),
                        const Spacer(),
                        FancyText(
                          "Most Important",
                          rawTextStyle: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: getFigmaColor("676C75")),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                            height: 15,
                            child:
                                Image.asset("assets/images/wifiLike_logo.png")),
                      ],
                    ),
                    Column(
                      children: [
                        _buildAiSuggestionCard(getFigmaColor("F97316")),
                        _buildAiSuggestionCard(getFigmaColor("2563EB")),
                        _buildAiSuggestionCard(getFigmaColor("9333EA"))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAiSuggestionCard(Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FancyContainer(
        backgroundColor: getFigmaColor("F3F3F4"),
        radius: 30,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 110,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: FancyContainer(
                                height: double.infinity,
                                width: 50,
                                radius: 18,
                                isContinousBorder: false,
                                hasBorder: true,
                                borderThickness: 4,
                                borderColor: getFigmaColor("F3F3F4"),
                                backgroundColor: color,
                                child: Icon(
                                  Icons.ac_unit_sharp,
                                  color: usedAppColor.white,
                                )),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: FancyContainer(
                              height: double.infinity,
                              width: 50,
                              radius: 18,
                              isContinousBorder: false,
                              hasBorder: true,
                              borderThickness: 4,
                              borderColor: getFigmaColor("F3F3F4"),
                              backgroundColor: color,
                              child: Icon(
                                Icons.access_time_filled_sharp,
                                color: getFigmaColor("F3F3F4"),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FancyContainer(
                              height: double.infinity,
                              width: 50,
                              radius: 18,
                              isContinousBorder: false,
                              hasBorder: true,
                              borderThickness: 4,
                              borderColor: getFigmaColor("F3F3F4"),
                              backgroundColor: getWhiterVersion(color, 80),
                              child: FancyText(
                                "8+",
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: color,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    FancyText(
                      "The Fitness Mindset",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        // color: getFigmaColor("676C75"),
                      ),
                    ),
                    Row(
                      children: [
                        FancyText(
                          "+10",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            // color: getFigmaColor("676C75"),
                          ),
                        ),
                        const SizedBox(width: 5),
                        FancyText(
                          "Potential Score Increase",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                            color: getFigmaColor("676C75"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 5),
                    Row(
                      children: [
                        FancyText(
                          "Fitness, HIIT",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                            color: getFigmaColor("676C75"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: FancyContainer(
                            backgroundColor: getFigmaColor("D7D8D9"),
                            width: 5,
                            height: 5,
                          ),
                        ),
                        FancyText(
                          "25-30min",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                            color: getFigmaColor("676C75"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
                child: buildAppArrow(isLeft: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
