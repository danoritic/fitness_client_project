import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:cr_calendar/cr_calendar.dart';
import 'package:cr_calendar/cr_calendar.dart' as cr_calendar;
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fitness_client_project/features/aiChatSession/models/models.dart';
import 'package:fitness_client_project/features/aiChatSession/widgets/widgets.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/customs/line_chart.dart';
import 'package:fitness_client_project/utils/customs/rater_widget.dart';
import 'package:fitness_client_project/utils/customs/rating_widget.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';

import 'package:card_swiper/card_swiper.dart' as card_swiper;

class CoachReviewPagePage extends StatefulWidget {
  const CoachReviewPagePage({super.key});

  @override
  State<CoachReviewPagePage> createState() => _CoachReviewPagePageState();
}

class _CoachReviewPagePageState extends State<CoachReviewPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          // Align
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: _buildTopBar(context),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FancyContainer(
                      backgroundColor: getFigmaColor("f3f3f4"),
                      radius: 14,
                      isContinousBorder: false,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.bookmark_add),
                      ),
                    ),
                    SizedBox(width: 10),
                    FancyContainer(
                      backgroundColor: getFigmaColor("f3f3f4"),
                      height: 80,
                      width: 80,
                      radius: 80,
                      isContinousBorder: false,
                      hasBorder: true,
                      borderColor: getFigmaColor("f3f3f4"),
                      child:
                          Image.asset("assets/images/maleCommentatorImage.png"),
                    ),
                    SizedBox(width: 10),
                    FancyContainer(
                      radius: 14,
                      isContinousBorder: false,
                      backgroundColor: getFigmaColor("f3f3f4"),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.share_outlined),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FancyText(
                      "Coach Spike Brown",
                      // "Human Coach",
                      // textAlign: TextAlign.center,
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox.square(
                        dimension: 25,
                        child: Image.asset(
                          "assets/images/coachSelectionPageIcon-wavyCheck.png",
                          color: getFigmaColor("2563EB"),
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: RaterWidget(
                    rateGetterFunction: (p0) {},
                  ),
                ),
                SizedBox(height: 20),
                FancyContainer(
                  height: 180,
                  radius: 60,
                  backgroundColor: getFigmaColor("f3f3f4"),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines: 5 - 1,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Row(
                          children: [
                            FancyContainer(
                              hasBorder: true,
                              isContinousBorder: false,
                              radius: 15,
                              borderColor: getFigmaColor("BABBBE"),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.undo_rounded),
                              ),
                            ),
                            SizedBox(width: 5),
                            FancyContainer(
                              hasBorder: true,
                              isContinousBorder: false,
                              radius: 15,
                              borderColor: getFigmaColor("BABBBE"),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.undo_rounded),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.description,
                              color: getFigmaColor("babbbe"),
                            ),
                            SizedBox(width: 5),
                            FancyText(
                              "78/120",
                              textColor: getFigmaColor("BABBBE"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyContainer(
                    height: 45,
                    isContinousBorder: false,
                    radius: 14,
                    width: double.infinity,
                    backgroundColor: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FancyText(
                          "Submit Review",
                          textColor: Colors.white,
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Review",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
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

class CoachChatPage extends StatefulWidget {
  const CoachChatPage({super.key});

  @override
  State<CoachChatPage> createState() => _CoachChatPageState();
}

class _CoachChatPageState extends State<CoachChatPage> {
  // Hi there! Thanks for choosing me as your personal coach. Let's get started. Are you ready for your workout? 🙌
  List<Map> listOfMessages = [
    {
      "message":
          "Hi there! Thanks for choosing me as your personal coach. Let's get started. Are you ready for your workout? 🙌",
      "isMine": false
    },
    {
      "message":
          "Absolutely, I'm ready to go. What's the plan for today? Let me know.",
      "isMine": true
    },
    {
      "message":
          """Today, we'll focus on full-body strength training.\n\nWe'll start with warm-up exercises, then move on to bodyweight exercises to build your core strength.""",
      "isMine": false
    },
    {
      "message": "Amazing! 👌",
      "isMine": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getFigmaColor("f3f3f4"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FancyContainer(
            // height: 30,

            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(50)),
            child: _buildTopBar(context),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: listOfMessages.map(
                (element) {
                  bool isMine = element["isMine"];
                  List<Widget> contents = [
                    FancyContainer(
                      height: 30,
                      width: 30,
                      radius: 10,
                      isContinousBorder: false,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: isMine
                            ? Icon(
                                Icons.person,
                                color: getFigmaColor("9EA0A5"),
                                size: 15,
                              )
                            : Image.asset(
                                "assets/images/Union_icon.png",
                                color: getFigmaColor("f3f3f4"),
                                height: 15,
                                width: 15,
                              ),
                      ),
                      backgroundColor: isMine
                          ? getFigmaColor("393C43")
                          : getFigmaColor("BABBBE"),
                    ),
                    const SizedBox(width: 5),
                    FancyContainer(
                      nulledAlign: true,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .68),
                      child: FancyText(
                        element["message"],
                        // "Human Coach",
                        // textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: isMine ? Colors.white : Colors.black,
                          // weight: FontWeight.bold,
                          //   size: 24,
                        ),
                      ),
                    )
                  ];

                  return Align(
                    alignment:
                        isMine ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyContainer(
                        constraints: const BoxConstraints(minHeight: 40),
                        nulledAlign: true,
                        backgroundColor:
                            isMine ? Colors.black : getFigmaColor("D7D8D9"),
                        isContinousBorder: false,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(17),
                          bottomLeft: Radius.circular(isMine ? 17 : 0),
                          topRight: const Radius.circular(17),
                          bottomRight: Radius.circular(isMine ? 0 : 17),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: isMine
                                  ? contents.reversed.toList()
                                  : contents),
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          )),
          FancyContainer(
            // height: 30,
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: FancyContainer(
                      // height: 40,
                      // width: 40,
                      radius: 15,
                      isContinousBorder: false,
                      backgroundColor: getFigmaColor("f3f3f4"),
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
                          child: Row(
                            children: [
                              Icon(Icons.mic),
                              Expanded(
                                  child: TextField(
                                cursorColor: getFigmaColor("F97316"),
                                decoration: InputDecoration(
                                  hintText: "Type to start chatting...",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontSize: 10,
                                  ),
                                  contentPadding: EdgeInsets.all(8.0),
                                ),
                              )),
                              Icon(Icons.camera_alt_rounded,
                                  color: getFigmaColor("BABBBE")),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  FancyContainer(
                    height: 40,
                    width: 40,
                    radius: 15,
                    isContinousBorder: false,
                    backgroundColor: getFigmaColor("F97316"),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildTailedAppArrow(isLeft: false),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String? aFunction(int firstInput) {
    String? result = "sahdasdvuagsdja";

    result = "i am ${firstInput + 20} years old";

    return result;
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        // height: 50,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(
                    children: [
                      Center(
                        child: FancyText("Coach Spike Brown",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              // weight: FontWeight.bold,
                              //   size: 24,
                            )),
                      ),
                      Row(
                        children: [
                          FancyText(
                            "Human Coach",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: getFigmaColor("736B66")
                                // weight: FontWeight.bold,
                                //   size: 24,
                                ),
                          ),
                          const SizedBox(width: 5),
                          FancyContainer(
                            height: 5,
                            width: 5,
                            backgroundColor: getFigmaColor("f3f3f4"),
                          ),
                          const SizedBox(width: 5),
                          FancyText(
                            "Certified",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: getFigmaColor("736B66")
                                // weight: FontWeight.bold,
                                //   size: 24,
                                ),
                          ),
                        ],
                      ),
                    ],
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

class CoachCallPage extends StatefulWidget {
  const CoachCallPage({super.key});

  @override
  State<CoachCallPage> createState() => _CoachCallPageState();
}

class _CoachCallPageState extends State<CoachCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
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
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/callPageImage-large.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FancyContainer(
                height: MediaQuery.of(context).size.height * .4,
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withAlpha(200),
                    Colors.white.withAlpha(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FancyContainer(
                        height: 110,
                        width: 85,
                        radius: 40,
                        backgroundColor: Colors.white,
                        shadows: List.filled(
                          4,
                          BoxShadow(
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                            color: Colors.black.withAlpha(10),
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/callPageImage-small.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
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
                            backgroundColor: Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.volume_up_rounded,
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
                            backgroundColor: getFigmaColor("F97316"),
                            hasBorder: true,
                            borderColor:
                                // Colors.green.withAlpha(200),
                                getFigmaColor("F97316", 50),
                            borderThickness: 3,
                            // shadows: List.filled(
                            //   4,
                            //   BoxShadow(
                            //     offset: const Offset(5, 5),
                            //     blurRadius: 10,
                            //     color: Colors.black.withAlpha(10),
                            //   ),
                            // ),

                            child: const Center(
                              child: Icon(
                                Icons.call_rounded,
                                weight: 1,
                                color: Colors.white,
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
                            backgroundColor: Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.chat,
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
            //     //   color: Colors.white,
            //     //   size: 220,
            //     // ),
            //     )
          ],
        ),
      ),
    );
  }
}

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
        backgroundColor: Colors.white,
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
                                color: Colors.white

                                //   size: 24,
                                ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.call_outlined,
                            color: Colors.white,
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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyContainer(
                radius: 50,
                backgroundColor: Colors.white,
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
                        backgroundColor: Colors.white,
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
                  textColor: Colors.white,
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

class ReactionPage extends StatefulWidget {
  const ReactionPage({super.key});

  @override
  State<ReactionPage> createState() => _ReactionPageState();
}

class _ReactionPageState extends State<ReactionPage> {
  List<Map> reactionsList = [
    {
      "message": "It was a superb experience.",
      "image": "assets/images/RateingPageImage-smiler.png",
      "color": getFigmaColor("F97316")
    },
    {
      "message": "It was a great experience.",
      "image": "assets/images/RateingPageImage-smile.png",
      "color": getFigmaColor("84CC16")
    },
    {
      "message": "It was an OK experience.",
      "image": "assets/images/RateingPageImage-straightface.png",
      "color": getFigmaColor("81858D")
    },
    {
      "message": "It was a bad experience.",
      "image": "assets/images/RateingPageImage-sad.png",
      "color": getFigmaColor("EF4444")
    },
    {
      "message": "It was an worst experience.",
      "image": "assets/images/RateingPageImage-dissapointed.png",
      "color": getFigmaColor("A855F7")
    },
    // {
    //   "message": "asssas",
    //   "image": "assets/images/RateingPageImage-marker.png",
    //   "color": getFigmaColor("value")
    // },
  ];
  int focussedReaction = 2;
  @override
  Widget build(BuildContext context) {
    Map detailsOfReaction = reactionsList[focussedReaction];
    return Scaffold(
        backgroundColor: detailsOfReaction['color'],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FancyText(
                "How was your experience?",
                textAlign: TextAlign.center,
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox.square(
              dimension: 20,
              child: Image.asset("assets/images/RateingPageImage-marker.png"),
            ),
            FancyContainer(
                height: MediaQuery.of(context).size.height * 0.2,
                // backgroundColor: Colors.yellow,
                child: card_swiper.Swiper(
                    itemCount: reactionsList.length,
                    scale: .1,
                    viewportFraction: .3,
                    loop: false,
                    onIndexChanged: (index) {
                      setState(() {
                        focussedReaction = index;
                      });
                    },
                    itemWidth: 100,
                    index: focussedReaction,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FancyContainer(
                            // hasBorder: true,
                            // backgroundColor: Colors.green,
                            child: SizedBox.square(
                              dimension: 50,
                              child: Image.asset(
                                reactionsList[index]['image'],
                                color: (index == focussedReaction)
                                    ? Colors.white
                                    : Colors.white.withAlpha(100),
                              ),
                            ),
                          ));
                    })),
            SizedBox.square(
              dimension: 20,
              child: Transform.rotate(
                  angle: pi,
                  child:
                      Image.asset("assets/images/RateingPageImage-marker.png")),
            ),
            const SizedBox(height: 30),
            FancyText(
              "${reactionsList[focussedReaction]['message']}",
              textColor: Colors.white,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FancyContainer(
                height: 45,
                isContinousBorder: false,
                radius: 14,
                width: double.infinity,
                backgroundColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FancyText(
                      "Yes, reschedule",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ));
  }
}

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
                        backgroundColor: Colors.white,
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
                                        textColor: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(
                                        Icons.check,
                                        color: Colors.white,
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

class RescheduleYourAppointmentDialogBox extends StatefulWidget {
  const RescheduleYourAppointmentDialogBox({super.key});

  @override
  State<RescheduleYourAppointmentDialogBox> createState() =>
      _RescheduleYourAppointmentDialogBoxState();
}

class _RescheduleYourAppointmentDialogBoxState
    extends State<RescheduleYourAppointmentDialogBox> {
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
                      padding: const EdgeInsets.all(12.0),
                      child: FancyContainer(
                        height: 380,
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                height: 170,
                                hasBorder: true,
                                borderColor: getFigmaColor("BABBBE"),
                                child: Image.asset(
                                    "assets/images/3dImage-calendar.png"),
                              ),
                              Center(
                                child: FancyText("Reschedule your appointment?",
                                    textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 18,

                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              const SizedBox(height: 5),
                              FancyText(
                                "Are you sure to reschedule your fitness appointment with your coach?",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  // weight: FontWeight.bold,
                                  //   size: 24,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: Colors.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Yes, reschedule",
                                        textColor: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      SizedBox.square(
                                        dimension: 15,
                                        child: Image.asset(
                                          "assets/images/appIcon-Calendar.png",
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
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

class CancelPersonalCoachAppointmentDialogBox extends StatefulWidget {
  const CancelPersonalCoachAppointmentDialogBox({super.key});

  @override
  State<CancelPersonalCoachAppointmentDialogBox> createState() =>
      _CancelPersonalCoachAppointmentDialogBoxState();
}

class _CancelPersonalCoachAppointmentDialogBoxState
    extends State<CancelPersonalCoachAppointmentDialogBox> {
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
                      padding: const EdgeInsets.all(12.0),
                      child: FancyContainer(
                        height: 420,
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                height: 170,
                                hasBorder: true,
                                borderColor: getFigmaColor("BABBBE"),
                                child: Image.asset(
                                    "assets/images/3dImage-cancel.png"),
                              ),
                              Center(
                                child: FancyText(
                                    "Cancel Personal Coach Appointment?",
                                    textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 18,

                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              const SizedBox(height: 5),
                              FancyText(
                                "There will be no refundable fee! Are you absolutely sure? 😡",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  // weight: FontWeight.bold,
                                  //   size: 24,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: getFigmaColor("EF4444", 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "No, Don’t Cancel",
                                        textColor: getFigmaColor("EF4444"),
                                      ),
                                      const SizedBox(width: 10),
                                      Icon(
                                        Icons.close,
                                        color: getFigmaColor("EF4444"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: getFigmaColor("EF4444"),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Yes, Cancel",
                                        textColor: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
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

class PaymentCompletedDialogBox extends StatefulWidget {
  const PaymentCompletedDialogBox({super.key});

  @override
  State<PaymentCompletedDialogBox> createState() =>
      _PaymentCompletedDialogBoxState();
}

class _PaymentCompletedDialogBoxState extends State<PaymentCompletedDialogBox> {
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
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                child: Image.asset(
                                    "assets/images/paymentCompleteImage.png"),
                              ),
                              Center(
                                child: FancyText("Payment Completed!",
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              FancyText(
                                "You have successfully completed fitness coach booking. We’ve sent receipt to your email. Thank you!",
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
                                  backgroundColor: Colors.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Complete",
                                        textColor: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(
                                        Icons.check,
                                        color: Colors.white,
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

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String? focusedTextField;
  @override
  Widget build(BuildContext context) {
    // "assets/images/appIcon-Calendar.png";
    // "assets/images/appIcon-creditCard.png";
    // "assets/images/appIcon-fatPencil.png";
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              _buildCardImageSection(),
              SizedBox(height: 10),
              _buildCardHolderSection(),
              SizedBox(height: 10),
              _buildCardNumberSection(),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: _buildExpiryDateSection()),
                  SizedBox(width: 10),
                  Expanded(child: _buildCVVSection()),
                ],
              ),
              SizedBox(height: 10),
              _buildBottomButton()
            ],
          ),
        ),
      ),
    );
  }

  Column _buildCardHolderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Card Holder Name",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Holder textField"
          bool isSelected = focusedTextField == "Card Holder textField";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: const Icon(
                      Icons.person_outline,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = "Card Holder textField";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Makise Kuris",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-fatPencil.png"),
                  ),
                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

// Card Number
  Column _buildCardNumberSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Card Number",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Number textField"
          bool isSelected = focusedTextField == "Card Number textField";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: const Icon(
                      Icons.question_mark_rounded,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = "Card Number textField";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "2411-4587-1125-1487",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-fatPencil.png"),
                  ),
                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

  Column _buildExpiryDateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Expiry",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Number textField"
          bool isSelected = focusedTextField == "Expiry";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-Calendar.png"),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = "Expiry";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "01-25",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

  Column _buildCVVSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "CVV",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          bool isSelected = focusedTextField == "CVV";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-creditCard.png"),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        focusedTextField = "CVV";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "025",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

  FancyContainer _buildCardImageSection() {
    return FancyContainer(
      height: 150,
      radius: 40,
      backgroundColor: Colors.black,
      child: Stack(
        children: [
          Image.asset("assets/images/creditCardBG.png"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 50,
                    child: Image.asset(
                      "assets/images/paymentMethodLogo-visa.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                FancyText(
                  "Makise Kurisu",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 10,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                FancyText(
                  "2411 4587 1125 1487",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Checkout",
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

  Padding _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        radius: 15,
        width: 300,
        height: 50,
        action: () {},
        isContinousBorder: false,
        backgroundColor: getFigmaColor("000000"),
        //  getFigmaColor("F3F3F4"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyText(
                "Checkout",
                rawTextStyle: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox.square(
                dimension: 15,
                child: Image.asset("assets/images/appIcon-shoppingCart.png"),
              ),
              // Icon(
              //   Icons.shop,
              //   color: Colors.white,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectPaymentMethodsBottomSheet extends StatefulWidget {
  const SelectPaymentMethodsBottomSheet({super.key});

  @override
  State<SelectPaymentMethodsBottomSheet> createState() =>
      _SelectPaymentMethodsBottomSheetState();
}

class _SelectPaymentMethodsBottomSheetState
    extends State<SelectPaymentMethodsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child: _buildCascadedBottomsheet(context)),
    );
  }

  List<Map> paymentProviderList = [
    {
      "name": "Amazon Pay",
      "image": "assets/images/paymentMethodLogo-AmazonPay.png"
    },
    {
      "name": "Apple Pay",
      "image": "assets/images/paymentMethodLogo-ApplePay.png"
    },
    {
      "name": "Google Pay",
      "image": "assets/images/paymentMethodLogo-GooglePay.png"
    },
    {
      "name": "Mastercard",
      "image": "assets/images/paymentMethodLogo-Mastercard.png"
    },
    {"name": "Visa", "image": "assets/images/paymentMethodLogo-visa.png"},
  ];
  int? selectedPaymentProvider = 0;

  Column _buildCascadedBottomsheet(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FancyContainer(
          height: MediaQuery.of(context).size.height * .70,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white.withAlpha(50),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white.withAlpha(200),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: FancyContainer(
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Center(
                            child: FancyContainer(
                              width: 50,
                              height: 5,
                              backgroundColor: getFigmaColor("D7D8D9"),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyText(
                                "Select Payment Methods",
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
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
                          const SizedBox(height: 10),
                          Column(
                            children: paymentProviderList.map(
                              (element) {
                                bool isSelected = selectedPaymentProvider ==
                                    paymentProviderList.indexOf(element);
                                double radius = 10;
                                Widget child = FancyContainer(
                                  action: () {
                                    selectedPaymentProvider =
                                        paymentProviderList.indexOf(element);
                                    setState(() {});
                                  },
                                  isContinousBorder: false,
                                  height: 40,
                                  radius: radius,
                                  backgroundColor: getFigmaColor("f3f3f4"),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        FancyText(
                                          element["name"],

                                          // textColor: Colors.white,
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 50,
                                          child: Image.asset(
                                            element["image"],
                                            //  "assets/images/calendarIcon-filled.png",
                                            // element["image"],
                                            // color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        FancyContainer(
                                          height: 15,
                                          width: 15,
                                          radius: 10,
                                          hasBorder: true,
                                          borderColor: isSelected
                                              ? Colors.black
                                              : Colors.grey,
                                          child: !isSelected
                                              ? null
                                              : FancyContainer(
                                                  height: 5,
                                                  width: 5,
                                                  radius: 20,
                                                  hasBorder: true,
                                                  backgroundColor: Colors.black,
                                                  // borderColor: isSelected
                                                  //     ? Colors.black
                                                  //     : Colors.grey,
                                                  child: SizedBox(),
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                );

                                return Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: isSelected
                                        ? wrapWithselectedsBorder(
                                            child: child, radius: radius)
                                        : child);
                              },
                            ).toList(),
                          ),
                          _buildBottomButton()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Padding _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        radius: 15,
        width: 300,
        height: 50,
        action: () {},
        isContinousBorder: false,
        backgroundColor: getFigmaColor("000000"),
        //  getFigmaColor("F3F3F4"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyText(
                "Select",
                rawTextStyle: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.check_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterCoachSearchBottomSheet extends StatefulWidget {
  const FilterCoachSearchBottomSheet({super.key});

  @override
  State<FilterCoachSearchBottomSheet> createState() =>
      _FilterCoachSearchBottomSheetState();
}

class _FilterCoachSearchBottomSheetState
    extends State<FilterCoachSearchBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child: _buildCascadedBottomsheet(context)),
    );
  }

  // List<String> genderList = ["Male", "Female", "AI/ML"];
  List<Map> genderListAdvanced = [
    {"name": "Female", "image": "assets/images/genderIcon-female.png"},
    {"name": "Male", "image": "assets/images/genderIcon-male.png"},
    {"name": "AI/ML", "image": "assets/images/genderIcon-ai.png"},
  ];

  List<Map> expertiseAreaList = [
    {"name": "Cardio & Conditioning", "icon": Icons.directions_run},
  ];

  int? selectedExpertiseArea = 0;

  List<Map> sortByList = [
    {"name": "Popularity (Highest First)", "icon": Icons.bar_chart_rounded},
  ];

  int? selectedSortBy = 0;

// SortBy
  Column _buildCascadedBottomsheet(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FancyContainer(
          height: MediaQuery.of(context).size.height * .85,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white.withAlpha(50),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white.withAlpha(200),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: FancyContainer(
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Center(
                            child: FancyContainer(
                              width: 50,
                              height: 5,
                              backgroundColor: getFigmaColor("D7D8D9"),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyText(
                                "Filter Coach Search",
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
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
                          const SizedBox(height: 10),
                          _buildAgeRangeSection(),
                          const SizedBox(height: 10),
                          _buildGenderSection(),
                          const SizedBox(height: 10),
                          _buildExpertiseAreaSection(),
                          const SizedBox(height: 10),
                          _buildSortBySection(),
                          const SizedBox(height: 10),
                          _buildBottomButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Padding _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        radius: 15,
        width: 300,
        height: 50,
        action: () {},
        isContinousBorder: false,
        backgroundColor: getFigmaColor("F97316"),
        //  getFigmaColor("F3F3F4"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyText(
                "Apply Filter (32)",
                textColor: Colors.white,
              ),
              const SizedBox(width: 10),
              Transform.rotate(
                angle: pi / 2,
                child: const Icon(
                  Icons.tune_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildSortBySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Sort By",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        FancyContainer(
          height: 40,
          radius: 30,
          backgroundColor: getFigmaColor("f3f3f4"),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              value: selectedExpertiseArea,
              onChanged: (value) {
                selectedExpertiseArea = value;
                setState(() {});
              },
              isExpanded: true,
              iconStyleData: IconStyleData(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.square(
                    dimension: 15,
                    child: buildAppArrowVertical(),
                  ),
                ),
              ),
              items: sortByList.map(
                (element) {
                  int index = sortByList.indexOf(element);
                  return DropdownMenuItem<int>(
                      value: index,
                      child: Row(
                        children: [
                          SizedBox.square(
                              dimension: 15,
                              child: Icon(
                                element["icon"],
                                size: 15,
                              )
                              //  Image.asset(
                              //   ,
                              //   color: Colors.white,
                              // ),
                              ),
                          FancyText(
                            element["name"],
                            size: 12,
                            // textColor: Colors.white,
                          ),
                        ],
                      ));
                },
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildExpertiseAreaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Expertise Area",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        FancyContainer(
          height: 40,
          radius: 30,
          backgroundColor: getFigmaColor("f3f3f4"),
          child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                  value: selectedExpertiseArea,
                  onChanged: (value) {
                    selectedExpertiseArea = value;
                    setState(() {});
                  },
                  isExpanded: true,
                  iconStyleData: IconStyleData(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox.square(
                        dimension: 15,
                        child: buildAppArrowVertical(),
                      ),
                    ),
                  ),
                  items: expertiseAreaList.map(
                    (element) {
                      int index = expertiseAreaList.indexOf(element);
                      return DropdownMenuItem<int>(
                          value: index,
                          child: Row(
                            children: [
                              SizedBox.square(
                                  dimension: 15,
                                  child: Icon(
                                    element["icon"],
                                    size: 15,
                                  )
                                  //  Image.asset(
                                  //   ,
                                  //   color: Colors.white,
                                  // ),
                                  ),
                              FancyText(
                                element["name"],
                                size: 12,
                                // textColor: Colors.white,
                              ),
                            ],
                          ));
                    },
                  ).toList())),
        ),
      ],
    );
  }

  Column _buildAgeRangeSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Height",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            FancyText(
              "cm",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: getFigmaColor("676C75"),
              ),
            ),
          ],
        ),
        RangeSliderWidget(
          functionToUpdateValues: (p0, p1) {},
        ),
      ],
    );
  }

  Column _buildGenderSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Gender",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            FancyText(
              "Choose 1",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: getFigmaColor("676C75"),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: genderListAdvanced.map((element) {
              int index = genderListAdvanced.indexOf(element);
              return (selectedIndex == index)
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyContainer(
                        radius: 10,
                        action: () {
                          selectedIndex = null;
                          setState(() {});
                        },
                        isContinousBorder: false,
                        backgroundColor: getFigmaColor("2563EB"),
                        hasBorder: true,
                        borderColor: getFigmaColor("CAD9F9"),
                        // withAlpha(100),
                        borderThickness: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox.square(
                                dimension: 12,
                                child: Image.asset(
                                  element["image"],
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              FancyText(element["name"],
                                  // "Male",
                                  size: 12,
                                  textColor: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FancyContainer(
                        radius: 10,
                        action: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        isContinousBorder: false,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox.square(
                                dimension: 12,
                                child: Image.asset(
                                  element["image"],
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 10),
                              FancyText(
                                element["name"],
                                size: 12,
                                // "Calorie",
                                // textColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
            }).toList(),
          ),
        ),
      ],
    );
  }

  int? selectedIndex = 2;
}

class FindFitnessCoachByTextPage extends StatefulWidget {
  const FindFitnessCoachByTextPage({super.key});

  @override
  State<FindFitnessCoachByTextPage> createState() =>
      _FindFitnessCoachByTextPageState();
}

class _FindFitnessCoachByTextPageState
    extends State<FindFitnessCoachByTextPage> {
  String tabName = "Near You";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _buildTopBar(context),
            _buildNearyouMapSearchSelector(),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                // left: 10,
                // right: 10,
              ),
              child: FancyContainer(
                radius: 15,
                backgroundColor: getFigmaColor("FFEDD5"),
                isContinousBorder: false,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: FancyContainer(
                    height: 45,
                    radius: 15,
                    isContinousBorder: false,
                    backgroundColor: getFigmaColor("F3F3F4"),
                    hasBorder: true,
                    borderColor: getFigmaColor("F97316"),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 15,
                              width: 15,
                              child: Image.asset(
                                  "assets/images/boxLikeSearchIcon.png")),
                          SizedBox(
                            height: 15,
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Coach Farnese",
                                hintStyle: GoogleFonts.workSans(
                                  color: getFigmaColor("393C43"),
                                ),
                              ),
                            ),
                          ),

                          // FancyText(
                          //   "Move map to discover fitness coach.",
                          //   weight: FontWeight.w700,
                          //   size: 12,
                          //   // textColor: getFigmaColor("676C75"),
                          // ),
                          // Spacer(),
                          Transform.rotate(
                              angle: pi * 90 / 180,
                              child: const Icon(Icons.tune_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FancyText(
                  "1 Results Found.",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                FancyText(
                  "Most Popular",
                  rawTextStyle: GoogleFonts.workSans(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: getFigmaColor("676C75")),
                ),
                const SizedBox(width: 5),
                SizedBox(
                    height: 15,
                    child: Image.asset("assets/images/wifiLike_logo.png")),
              ],
            ),
            Column(
              children: List.filled(
                  3,
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: _buildItem(),
                  )),
            )
          ],
        ));
  }

  FancyContainer _buildItem() {
    return FancyContainer(
      height: 85,
      radius: 40,
      nulledAlign: true,
      backgroundColor: getFigmaColor("F3F3F4"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: FancyContainer(
                radius: 40,
                backgroundColor: Colors.red,
                child: Image.asset(
                  "assets/images/sttretchingWoman.png",
                  // width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      FancyContainer(
                        isContinousBorder: false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: FancyText(
                            "Human",
                            weight: FontWeight.w900,
                            size: 8,
                          ),
                        ),
                        backgroundColor: getFigmaColor("D7D8D9"),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FancyText(
                      "Zen Flow Yoga",
                      weight: FontWeight.bold,
                      size: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: getFigmaColor("F97316"),
                        size: 12,
                      ),
                      const SizedBox(width: 5),
                      FancyText(
                        "1.8",
                        weight: FontWeight.w500,
                        size: 14,
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
                        height: 12,
                        child: Image.asset(
                            "assets/images/insightIcon-dumbell.png"),
                      ),
                      // Icon(
                      //   Icons.timer,
                      //   color: getFigmaColor("9EA0A5"),
                      //   size: 12,
                      // ),
                      const SizedBox(width: 5),
                      FancyText(
                        "Strength",
                        weight: FontWeight.w500,
                        size: 14,
                        textColor: getFigmaColor("676C75"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15, width: 15, child: buildAppArrow(isLeft: false))
          ],
        ),
      ),
    );
  }

  FancyContainer _buildNearyouMapSearchSelector() {
    return FancyContainer(
      height: 45,
      // width: 30,
      radius: 10,
      isContinousBorder: false,
      action: () {
        print("sassasasas");
      },
      backgroundColor: getFigmaColor("F3F3F4"),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            "Near You",
            "Map",
            "Search",
          ].map(
            (e) {
              bool isSelected = tabName == e;
              return Expanded(
                child: FancyContainer(
                  height: 45,
                  // width: 30,
                  radius: 10,
                  isContinousBorder: false,
                  action: () {
                    tabName = e;
                    setState(() {});
                  },
                  backgroundColor: isSelected ? Colors.white : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FancyText(
                      e,
                      weight: FontWeight.w700,
                      textColor:
                          isSelected ? Colors.black : getFigmaColor("676C75"),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
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

class FindFitnessCoachPage extends StatefulWidget {
  const FindFitnessCoachPage({super.key});

  @override
  State<FindFitnessCoachPage> createState() => _FindFitnessCoachPageState();
}

class _FindFitnessCoachPageState extends State<FindFitnessCoachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                    Colors.white.withAlpha(0),
                    Colors.white.withAlpha(100),
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
                    Colors.black.withAlpha(100),
                    Colors.black.withAlpha(0),
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
                  padding: const EdgeInsets.all(18.0),
                  child: FancyContainer(
                    radius: 40,
                    // height: 217,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                                // textColor: getFigmaColor("676C75"),
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
                                      textColor: getFigmaColor("676C75"),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          FancyContainer(
                            height: 40,
                            backgroundColor: Colors.black,
                            radius: 15,
                            isContinousBorder: false,
                            child: FancyText(
                              "Strength Expert",
                              weight: FontWeight.w800,
                              size: 16,
                              textColor: Colors.white,
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
              padding: const EdgeInsets.only(
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
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        // textColor: getFigmaColor("676C75"),
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
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child: Image.asset("assets/images/insightIcon-dumbell.png")),
        const SizedBox(width: 5),
        FancyText(
          "Strength Expert",
          weight: FontWeight.w500,
          size: 12,
          textColor: getFigmaColor("676C75"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-star.png")),
        const SizedBox(width: 5),
        FancyText(
          "4.8",
          weight: FontWeight.w500,
          size: 12,
          textColor: getFigmaColor("676C75"),
        ),
        const SizedBox(width: 5),
        FancyText(
          "(28)",
          weight: FontWeight.w800,
          size: 12,
          // textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
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

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  String tabName = "Recent";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopBar(context),
                RatingWidget(ratingDetails: {
                  1: 1,
                  2: 2,
                  3: 3,
                  4: 4,
                  5: 5,
                }),
                SizedBox(height: 10),
                _buildRecentPositiveNegativeSelector(),
                SizedBox(height: 10),
                Column(
                  children: List.filled(3, _buildCommentSlab()),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildCommentSlab() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: FancyContainer(
        // height: 300,
        // width: double.infinity,

        radius: 30,
        backgroundColor: getFigmaColor("f3f3f4"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  FancyContainer(
                    height: 48,
                    width: 48,
                    radius: 30,
                    child:
                        Image.asset("assets/images/maleCommentatorImage.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      FancyText("Casca Smith",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )
                          // textColor: getFigmaColor("676C75"),
                          ),
                      SizedBox(height: 10),
                      _buildIconImageDotRepeat(),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                      ),
                      onPressed: () {})
                ],
              ),
              SizedBox(height: 10),
              FancyText(
                "Farnese has a deep understanding of various workout techniques and tailored each session to match my goals and abilities. Their enthusiasm and positivity are contagious, making every workout session both challenging and enjoyable.",
                maxLine: 3,
                weight: FontWeight.w500,
                size: 14,
                textColor: getFigmaColor("676C75"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buildIconImageDotRepeat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-star.png")),
        const SizedBox(width: 5),
        FancyText(
          "2.8",
          weight: FontWeight.w500,
          size: 14,
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
          "2d ago",
          weight: FontWeight.w500,
          size: 14,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }

  FancyContainer _buildRecentPositiveNegativeSelector() {
    return FancyContainer(
      height: 45,
      // width: 30,
      radius: 10,
      isContinousBorder: false,
      action: () {
        print("sassasasas");
      },
      backgroundColor: getFigmaColor("F3F3F4"),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            "Recent",
            "Positive",
            "Negative",
          ].map(
            (e) {
              bool isSelected = tabName == e;
              return Expanded(
                child: FancyContainer(
                  height: 45,
                  // width: 30,
                  radius: 10,
                  isContinousBorder: false,
                  action: () {
                    tabName = e;
                    setState(() {});
                  },
                  backgroundColor: isSelected ? Colors.white : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FancyText(
                      e,
                      weight: FontWeight.w700,
                      textColor:
                          isSelected ? Colors.black : getFigmaColor("676C75"),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Reviews",
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

class CoachSelectionPage extends StatefulWidget {
  const CoachSelectionPage({super.key});

  @override
  State<CoachSelectionPage> createState() => _CoachSelectionPageState();
}

class _CoachSelectionPageState extends State<CoachSelectionPage> {
  String tabName = "Male";
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              Image.asset("assets/images/coachAIImage.png"),
              Image.asset("assets/images/coachFemaleImage.png"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FancyContainer(
              height: MediaQuery.of(context).size.height * .5,
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.white.withAlpha(0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(child: SizedBox()),
              FancyContainer(
                // backgroundColor: Colors.red,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyContainer(
                      action: () {
                        if ((pageController.page ?? 0) > 0)
                          pageController.previousPage(
                            duration: NumDurationExtensions(1).seconds,
                            curve: Curves.easeInOut,
                          );
                      },
                      height: 100,
                      child: buildSideArrowContainer(
                        isLeft: false,
                        child: Center(
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: buildAppArrow(
                              isLeft: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FancyContainer(
                      action: () {
                        if ((pageController.page ?? 0) < 1)
                          pageController.nextPage(
                            duration: NumDurationExtensions(1).seconds,
                            curve: Curves.easeInOut,
                          );
                      },
                      height: 100,
                      child: buildSideArrowContainer(
                        child: Center(
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: buildAppArrow(
                              isLeft: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: FancyContainer(
                    height: 45,
                    width: 200,
                    radius: 10,
                    isContinousBorder: false,
                    action: () {
                      print("sassasasas");
                    },
                    backgroundColor: getFigmaColor("F3F3F4"),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          "Male",
                          "Female",
                        ].map(
                          (e) {
                            bool isSelected = tabName == e;
                            return Expanded(
                              child: FancyContainer(
                                height: 45,
                                // width: 30,
                                radius: 10,
                                isContinousBorder: false,
                                action: () {
                                  tabName = e;
                                  setState(() {});
                                },
                                backgroundColor:
                                    isSelected ? Colors.white : null,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: FancyText(
                                    e,
                                    weight: FontWeight.w700,
                                    textColor: isSelected
                                        ? Colors.black
                                        : getFigmaColor("676C75"),
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FancyContainer(
                      isContinousBorder: false,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: getFigmaColor("676C75"),
                          size: 13,
                        ),
                      ),
                      backgroundColor: getFigmaColor("f3f3f4"),
                    ),
                    FancyContainer(
                      isContinousBorder: false,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Image.asset(
                            "assets/images/appIcon-calendarFilled.png",
                            height: 13,
                            width: 13,
                          ),
                        ),
                      ),
                      backgroundColor: getFigmaColor("f3f3f4"),
                    ),
                  ],
                ),
                Spacer(),
                FancyContainer(
                  nulledAlign: true,
                  isContinousBorder: false,
                  radius: 19,
                  hasBorder: true,
                  borderThickness: 4,
                  borderColor: getFigmaColor("f3f3f4", 70),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: getFigmaColor("F97316"),
                ),
                SizedBox(height: 20),
                FancyText(
                  "X-AE-A-XII",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 15,
                        width: 15,
                        child: Image.asset(
                            "assets/images/coachSelectionPageIcon-wavyCheck.png")),
                    // Icon(
                    //   Icons.timer,
                    //   color: getFigmaColor("676C75"),
                    //   size: 15,
                    // ),
                    const SizedBox(width: 5),
                    FancyText(
                      "Human",
                      weight: FontWeight.w500,
                      size: 14,
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
                        height: 15,
                        width: 15,
                        child: Image.asset(
                            "assets/images/coachSelectionPageIcon-star.png")),

                    const SizedBox(width: 5),
                    FancyText(
                      "2.8",
                      weight: FontWeight.w500,
                      size: 14,
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
                        height: 15,
                        width: 15,
                        child: Image.asset(
                            "assets/images/coachSelectionPageIcon-person.png")),

                    const SizedBox(width: 5),
                    FancyText(
                      "87 Clients",
                      weight: FontWeight.w500,
                      size: 14,
                      textColor: getFigmaColor("676C75"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FindingFitnessCoachPage extends StatefulWidget {
  const FindingFitnessCoachPage({super.key});

  @override
  State<FindingFitnessCoachPage> createState() =>
      _FindingFitnessCoachPageState();
}

class _FindingFitnessCoachPageState extends State<FindingFitnessCoachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/basketBall.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FancyContainer(
              height: MediaQuery.of(context).size.height * .5,
              gradient: LinearGradient(
                colors: [
                  Colors.black.withAlpha(100),
                  Colors.black.withAlpha(0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/Union_icon.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(height: 20),
                    FancyText(
                      "Finding Fitness Coach...",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    LinearProgressIndicator(
                      value: .5,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      backgroundColor: getFigmaColor("f3f3f4", 32),
                    ),
                    SizedBox(height: 20),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class SessionHistoryPage extends StatefulWidget {
  const SessionHistoryPage({super.key});

  @override
  State<SessionHistoryPage> createState() => _SessionHistoryPageState();
}

class _SessionHistoryPageState extends State<SessionHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: buildBackArrow(context),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              FancyText(
                "Session Completed",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              FancyText(
                "Thank you for taking the time to do personalized fitness suggestion with our AI!",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  FancyText(
                    "24 Session Total",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  FancyText(
                    "This Month",
                    rawTextStyle: GoogleFonts.workSans(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: getFigmaColor("676C75")),
                  ),
                  const SizedBox(width: 5),
                  SizedBox(
                      height: 15,
                      child: Image.asset("assets/images/wifiLike_logo.png")),
                ],
              ),
              SizedBox(height: 20),
              StagePacketWidget(
                sessionHistoryItemPackModel: defaultSessionHistoryItemPackModel,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SessionCompletedPage extends StatefulWidget {
  const SessionCompletedPage({super.key});

  @override
  State<SessionCompletedPage> createState() => _SessionCompletedPageState();
}

class _SessionCompletedPageState extends State<SessionCompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // color: Colors.red,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyContainer(
                  backgroundColor: getFigmaColor("FFEDD5"),
                  nulledAlign: true,
                  isContinousBorder: false,
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Icon(
                      Icons.check_rounded,
                      color: getFigmaColor("F97316"),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FancyText(
                  "Session Completed",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                FancyText(
                  "Thank you for taking the time to do personalized fitness suggestion with our AI!",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyContainer(
                    backgroundColor: Colors.black,
                    // height: 40,
                    // nulledAlign: true,
                    isContinousBorder: false,
                    radius: 15,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 12.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FancyText(
                            "Great, Thanks!",
                            // size: 16,
                            // textColor: Colors.white,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const SizedBox(
                              width: 20,
                              child: Icon(Icons.check_rounded,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyContainer(
                    backgroundColor: getFigmaColor("F3F3F4"),
                    // height: 40,
                    // nulledAlign: true,
                    isContinousBorder: false,
                    radius: 15,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 12.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FancyText(
                            "Repeat Session",
                            // size: 16,
                            // textColor: Colors.white,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              // color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const SizedBox(
                            width: 20,
                            child: Icon(
                              Icons.repeat_rounded,
                              // color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FancyText(
                  "See Session History",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: getFigmaColor("F97316"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AiCoachChatLastPage extends StatefulWidget {
  const AiCoachChatLastPage({super.key});

  @override
  State<AiCoachChatLastPage> createState() => _AiCoachChatLastPageState();
}

class _AiCoachChatLastPageState extends State<AiCoachChatLastPage> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();

  Color selectRandomColor() {
    List<Color> colors = [
      getFigmaColor("84CC16"),
      getFigmaColor("9333EA"),
      getFigmaColor("2563EB"),
    ];
    return colors[Random().nextInt(colors.length - 1)];
  }

  List<String> selectibles = [
    "Strength Training",
    "Cardio",
    "HIIT",
    "Pilates",
    "Sports",
    "Core Abs",
    "None Of Above",
  ];
  List<String> selecteds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "And here are some of our coach suggestion that based on your fitness level! 🏐",
              ),
              const Spacer(),
              Column(
                children: [
                  Column(
                      children: List.filled(
                    2,
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: _buildItem(),
                    ),
                  )),
                  FancyText(
                    "See All Workouts",
                    // size: 16,
                    // textColor: Colors.white,
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: getFigmaColor("F97316"),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Complete",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            const SizedBox(
                                width: 20,
                                child: Icon(
                                  Icons.check_rounded,
                                  color: Colors.white,
                                )
                                // buildTailedAppArrow(isLeft: false),
                                ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  FancyContainer _buildItem() {
    return FancyContainer(
      height: 85,
      radius: 40,
      nulledAlign: true,
      backgroundColor: getFigmaColor("F3F3F4"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: FancyContainer(
                radius: 40,
                backgroundColor: Colors.red,
                child: Image.asset(
                  "assets/images/sttretchingWoman.png",
                  // width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      FancyContainer(
                        isContinousBorder: false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: FancyText(
                            "Human",
                            weight: FontWeight.w900,
                            size: 8,
                          ),
                        ),
                        backgroundColor: getFigmaColor("D7D8D9"),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FancyText(
                      "Zen Flow Yoga",
                      weight: FontWeight.bold,
                      size: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: getFigmaColor("F97316"),
                        size: 12,
                      ),
                      const SizedBox(width: 5),
                      FancyText(
                        "1.8",
                        weight: FontWeight.w500,
                        size: 14,
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
                        height: 12,
                        child: Image.asset(
                            "assets/images/insightIcon-dumbell.png"),
                      ),
                      // Icon(
                      //   Icons.timer,
                      //   color: getFigmaColor("9EA0A5"),
                      //   size: 12,
                      // ),
                      const SizedBox(width: 5),
                      FancyText(
                        "Strength",
                        weight: FontWeight.w500,
                        size: 14,
                        textColor: getFigmaColor("676C75"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15, width: 15, child: buildAppArrow(isLeft: false))
          ],
        ),
      ),
    );
  }
}

class AiCoachChatPage18 extends StatefulWidget {
  const AiCoachChatPage18({super.key});

  @override
  State<AiCoachChatPage18> createState() => _AiCoachChatPage18State();
}

class _AiCoachChatPage18State extends State<AiCoachChatPage18> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();

  Color selectRandomColor() {
    List<Color> colors = [
      getFigmaColor("84CC16"),
      getFigmaColor("9333EA"),
      getFigmaColor("2563EB"),
    ];
    return colors[Random().nextInt(colors.length - 1)];
  }

  List<String> selectibles = [
    "Strength Training",
    "Cardio",
    "HIIT",
    "Pilates",
    "Sports",
    "Core Abs",
    "None Of Above",
  ];
  List<String> selecteds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Please wait while we’re generating a personalized workout & coach for you... ⏳",
              ),
              const Spacer(),
              Column(
                children: [
                  Column(
                      children: List.filled(
                    2,
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: _buildItem(),
                    ),
                  )),
                  FancyText(
                    "See All Workouts",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: getFigmaColor("F97316"),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  FancyContainer _buildItem() {
    return FancyContainer(
      height: 80,
      radius: 40,
      backgroundColor: getFigmaColor("F3F3F4"),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: FancyContainer(
                radius: 40,
                backgroundColor: Colors.red,
                child: Image.asset(
                  "assets/images/sttretchingWoman.png",
                  // width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      FancyText(
                        "Zen Flow Yoga",
                        weight: FontWeight.bold,
                        size: 16,
                      ),
                      const SizedBox(width: 10),
                      FancyContainer(
                        isContinousBorder: false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: FancyText(
                            "Yoga",
                            weight: FontWeight.bold,
                            size: 12,
                          ),
                        ),
                        backgroundColor: getFigmaColor("D7D8D9"),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: .5,
                    color: Colors.black,
                    backgroundColor: getFigmaColor("D7D8D9"),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.description,
                        color: getFigmaColor("9EA0A5"),
                        size: 12,
                      ),
                      FancyText(
                        "25 Movements",
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                      FancyContainer(
                        height: 10,
                        width: 10,

                        // isContinousBorder: false,
                        backgroundColor: getFigmaColor("D7D8D9"),
                      ),
                      Icon(
                        Icons.timer,
                        color: getFigmaColor("9EA0A5"),
                        size: 12,
                      ),
                      FancyText(
                        "0%",
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                    ],
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

// AiCoachChatPage17
class AiCoachChatPage17 extends StatefulWidget {
  const AiCoachChatPage17({super.key});

  @override
  State<AiCoachChatPage17> createState() => _AiCoachChatPage17State();
}

class _AiCoachChatPage17State extends State<AiCoachChatPage17> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();

  Color selectRandomColor() {
    List<Color> colors = [
      getFigmaColor("84CC16"),
      getFigmaColor("9333EA"),
      getFigmaColor("2563EB"),
    ];
    return colors[Random().nextInt(colors.length - 1)];
  }

  List<String> selectibles = [
    "Strength Training",
    "Cardio",
    "HIIT",
    "Pilates",
    "Sports",
    "Core Abs",
    "None Of Above",
  ];
  List<String> selecteds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Please wait while we’re generating a personalized workout & coach for you... ⏳",
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: FancyContainer(
                  //     backgroundColor: Colors.black,
                  //     // height: 40,
                  //     // nulledAlign: true,
                  //     isContinousBorder: false,
                  //     radius: 15,
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 12.0,
                  //         vertical: 12.0,
                  //       ),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: [
                  //           FancyText(
                  //             "Continue",
                  //             // size: 16,
                  //             // textColor: Colors.white,
                  //             rawTextStyle: GoogleFonts.workSans(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w600,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 7),
                  //           SizedBox(
                  //               width: 20,
                  //               child: buildTailedAppArrow(isLeft: false)),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
                  Colors.black.withAlpha(100),
                  Colors.black.withAlpha(0),
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
                backgroundColor: Colors.grey[300],
              ),
              const Expanded(child: SizedBox()),
              FancyContainer(
                height: 1,
                width: double.infinity,
                backgroundColor: Colors.grey[300],
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
                  backgroundColor: Colors.grey[300],
                ),
                const Expanded(child: SizedBox()),
                FancyContainer(
                  height: double.infinity,
                  width: 1,
                  backgroundColor: Colors.grey[300],
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
                        backgroundColor: Colors.white,
                        shadows: List.filled(
                          4,
                          BoxShadow(
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                            color: Colors.black.withAlpha(10),
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
                        backgroundColor: Colors.white,
                        shadows: List.filled(
                          4,
                          BoxShadow(
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                            color: Colors.black.withAlpha(10),
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
                            backgroundColor: Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
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
                            backgroundColor: Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
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
                            backgroundColor: Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
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
            //     //   color: Colors.white,
            //     //   size: 220,
            //     // ),
            //     )
          ],
        ),
      ),
    );
  }
}

class AiCoachChatPage14ImageSelectionMenu extends StatefulWidget {
  const AiCoachChatPage14ImageSelectionMenu({super.key});

  @override
  State<AiCoachChatPage14ImageSelectionMenu> createState() =>
      _AiCoachChatPage14ImageSelectionMenuState();
}

class _AiCoachChatPage14ImageSelectionMenuState
    extends State<AiCoachChatPage14ImageSelectionMenu> {
  String? tabName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildTopBar(context),
                FancyContainer(
                  height: 45,
                  // width: 30,
                  radius: 10,
                  isContinousBorder: false,
                  action: () {
                    print("sassasasas");
                  },
                  backgroundColor: getFigmaColor("F3F3F4"),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        "Audio",
                        "Images",
                        "Videos",
                      ].map(
                        (e) {
                          bool isSelected = tabName == e;
                          return Expanded(
                            child: FancyContainer(
                              height: 45,
                              // width: 30,
                              radius: 10,
                              isContinousBorder: false,
                              action: () {
                                if (isSelected) {
                                  tabName = null;
                                } else {
                                  tabName = e;
                                }
                                setState(() {});
                              },
                              backgroundColor: isSelected ? Colors.white : null,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: FancyText(
                                  e,
                                  weight: FontWeight.w700,
                                  textColor: isSelected
                                      ? Colors.black
                                      : getFigmaColor("676C75"),
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: FancyText(
                        "All Images",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyText(
                        "Newest First",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/sortIcon.png",
                      height: 15,
                      width: 15,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.filled(
                      3,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyContainer(
                          hasBorder: true,
                          radius: 40,
                          child: Image.asset(
                              "assets/images/strongRunningHuman.png"),
                        ),
                      ),
                    ),
                    childAspectRatio: 1,
                  ),
                ),
                const SizedBox(height: 30),
                FancyContainer(
                  backgroundColor: Colors.black,
                  // height: 50,
                  // width: 50,
                  nulledAlign: true,
                  radius: 40,
                  child: const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Browse Photo",
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

class AiCoachChatPage13And16 extends StatefulWidget {
  const AiCoachChatPage13And16({super.key});

  @override
  State<AiCoachChatPage13And16> createState() => _AiCoachChatPage13And16State();
}

class _AiCoachChatPage13And16State extends State<AiCoachChatPage13And16> {
  String? menuValue;
  bool hasImage = true;

  Color selectRandomColor() {
    List<Color> colors = [
      getFigmaColor("84CC16"),
      getFigmaColor("9333EA"),
      getFigmaColor("2563EB"),
    ];
    return colors[Random().nextInt(colors.length - 1)];
  }

  List<String> selectibles = [
    "Strength Training",
    "Cardio",
    "HIIT",
    "Pilates",
    "Sports",
    "Core Abs",
    "None Of Above",
  ];
  List<String> selecteds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "What kind of workout do you usually enjoy?",
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  hasImage
                      ? Column(
                          children: [
                            FancyContainer(
                              action: () {
                                hasImage = !hasImage;
                                setState(() {});
                              },
                              radius: 30,
                              hasBorder: true,
                              borderColor: getFigmaColor("BABBBE"),
                              width: 180,
                              child: AspectRatio(
                                aspectRatio: 180 / 277,
                                child: Image.asset(
                                  "assets/images/strongRunningHuman.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            FancyText(
                              "image.jpg",
                            ),
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: FancyContainer(
                            backgroundColor: Colors.black,
                            action: () {
                              hasImage = !hasImage;
                              setState(() {});
                            },
                            isContinousBorder: false,
                            radius: 15,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 12.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FancyText(
                                    "Upload/Scan",
                                    // size: 16,
                                    // textColor: Colors.white,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  const SizedBox(
                                      width: 20,
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                      )
                                      // buildTailedAppArrow(isLeft: false)
                                      ),
                                ],
                              ),
                            ),
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage12 extends StatefulWidget {
  const AiCoachChatPage12({super.key});

  @override
  State<AiCoachChatPage12> createState() => _AiCoachChatPage12State();
}

class _AiCoachChatPage12State extends State<AiCoachChatPage12> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();

  Color selectRandomColor() {
    List<Color> colors = [
      getFigmaColor("84CC16"),
      getFigmaColor("9333EA"),
      getFigmaColor("2563EB"),
    ];
    return colors[Random().nextInt(colors.length - 1)];
  }

  List<String> selectibles = [
    "Strength Training",
    "Cardio",
    "HIIT",
    "Pilates",
    "Sports",
    "Core Abs",
    "None Of Above",
  ];
  List<String> selecteds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "What kind of workout do you usually enjoy?",
              ),
              const Spacer(),
              Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(
                  selectibles.length,
                  (index) {
                    bool isSelected = selecteds.contains(selectibles[index]);
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: FancyContainer(
                        // height: 45,
                        radius: 15,
                        action: () {
                          if (isSelected) {
                            selecteds.remove(selectibles[index]);
                          } else {
                            selecteds.add(selectibles[index]);
                          }
                          setState(() {});
                        },
                        isContinousBorder: false,
                        nulledAlign: true,
                        backgroundColor: isSelected
                            ? selectRandomColor()
                            : getFigmaColor("F3F3F4"),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10.0,
                          ),
                          child: FancyText(
                            selectibles[index],
                            weight: FontWeight.bold,
                            textColor: isSelected
                                ? Colors.white
                                : getFigmaColor("313A34"),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage11And12 extends StatefulWidget {
  const AiCoachChatPage11And12({super.key});

  @override
  State<AiCoachChatPage11And12> createState() => _AiCoachChatPage11And12State();
}

class _AiCoachChatPage11And12State extends State<AiCoachChatPage11And12> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Then please specify your supplements right now.",
              ),
              const Spacer(),
              Column(
                children: [
                  FancyContainer(
                    height: 45,
                    radius: 15,
                    isContinousBorder: false,
                    backgroundColor: getFigmaColor("F3F3F4"),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: textEditingController,
                              // textAlign: textEditingController.text.isNotEmpty
                              //     ? TextAlign.start
                              //     : TextAlign.end,
                              onChanged: (value) {
                                selectedItemIsVisible = false;
                                setState(() {});
                              },
                              decoration: const InputDecoration(
                                hintText: "Creatine 2XF",
                                // hintStyle: TextStyle(color: getFigmaColor("BABBBE")),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Transform.rotate(
                              angle: pi * 90 / 180,
                              child: const Icon(Icons.tune_rounded)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Visibility(
                    visible:
                        //  false,
                        selectedItemIsVisible,
                    replacement: FancyContainer(
                        // height: 45,
                        radius: 15,
                        isContinousBorder: false,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: FancyContainer(
                            backgroundColor: getFigmaColor("F3F3F4"),
                            // height: 40,
                            // width: 150,
                            radius: 20,
                            isContinousBorder: false,
                            // nulledAlign: true,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                "Vitamin D",
                                "BCAA XP",
                                "Omega 2",
                                "Beta-alanine",
                              ]
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: FancyContainer(
                                        radius: 15,
                                        isContinousBorder: false,
                                        action: () {
                                          // selectedBodyPart = e;
                                          textEditingController.text = "";
                                          selectedItemIsVisible = true;
                                          setState(() {});
                                        },
                                        backgroundColor:
                                            // selectedBodyPart != e
                                            // ?
                                            getFigmaColor("F3F3F4"),
                                        // : Colors.white,
                                        // height: 40,
                                        // nulledAlign: true,

                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(e),
                                            Icon(
                                              Icons.add,
                                              color: getFigmaColor("9EA0A5"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        )),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        FancyText("Active Supplements:"),
                        const SizedBox(height: 10),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: List.generate(
                            5,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: FancyContainer(
                                  // height: 45,
                                  radius: 15,
                                  isContinousBorder: false,
                                  nulledAlign: true,
                                  backgroundColor: getFigmaColor("F3F3F4"),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 3.0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FancyText(
                                          (index % 2 != 0)
                                              ? "Creatine"
                                              : "Beta-alanine",
                                          weight: FontWeight.bold,
                                        ),
                                        Icon(
                                          Icons.close,
                                          color: getFigmaColor("9EA0A5"),
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage10 extends StatefulWidget {
  const AiCoachChatPage10({super.key});

  @override
  State<AiCoachChatPage10> createState() => _AiCoachChatPage10State();
}

class _AiCoachChatPage10State extends State<AiCoachChatPage10> {
  String? menuValue;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Are you currently taking any supplements?",
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyContainer(
                          backgroundColor: Colors.black,
                          // height: 40,
                          // nulledAlign: true,
                          isContinousBorder: false,
                          radius: 15,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FancyText(
                                  "Yes, I Do",
                                  // size: 16,
                                  // textColor: Colors.white,
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 7),
                                SizedBox(
                                    width: 20,
                                    child: buildTailedAppArrow(isLeft: false)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      FancyContainer(
                        backgroundColor: getFigmaColor("FEE2E2"),
                        // height: 40,
                        // nulledAlign: true,
                        isContinousBorder: false,
                        radius: 15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 12.0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FancyText(
                                "No, I Don’t",
                                // size: 16,
                                // textColor: Colors.white,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(width: 7),
                              const SizedBox(
                                width: 30,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyContainer(
                          backgroundColor: getFigmaColor("F3F3F4"),
                          // height: 40,
                          // nulledAlign: true,
                          isContinousBorder: false,
                          radius: 15,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FancyText(
                                  "I Don’t Know",
                                  // size: 16,
                                  // textColor: Colors.white,
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    // color: Colors.red,
                                  ),
                                ),
                                const SizedBox(width: 7),
                                const SizedBox(
                                  width: 30,
                                  child: Icon(
                                    Icons.question_mark,
                                    // color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage8And9 extends StatefulWidget {
  const AiCoachChatPage8And9({super.key});

  @override
  State<AiCoachChatPage8And9> createState() => _AiCoachChatPage8And9State();
}

class _AiCoachChatPage8And9State extends State<AiCoachChatPage8And9> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Do you have any additional health notes or fitness concerns you’d like to write?",
              ),
              const Spacer(),
              _buildSpecialWIdget(),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextEditingController textEditingController = TextEditingController();
  Widget _buildSpecialWIdget() {
    return Container(
      // color: Colors.red,
      child: TextField(
        controller: textEditingController,
        textAlign: textEditingController.text.isNotEmpty
            ? TextAlign.start
            : TextAlign.end,
        onChanged: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          hintText: "Enter your description...",
          hintStyle: TextStyle(color: getFigmaColor("BABBBE")),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class AiCoachChatPage7 extends StatefulWidget {
  const AiCoachChatPage7({super.key});

  @override
  State<AiCoachChatPage7> createState() => _AiCoachChatPage7State();
}

class _AiCoachChatPage7State extends State<AiCoachChatPage7> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Do you have any additional health notes or fitness concerns you’d like to write?",
              ),
              const Spacer(),
              _buildSpecialWIdget(),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  int cariableWeight = 5;
  Widget _buildSpecialWIdget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      action: () {
                        if (cariableWeight > 0) cariableWeight--;
                        setState(() {});
                      },

                      radius: 40,
                      height: 50,
                      width: 50,
                      // nulledAlign: true,

                      backgroundColor: getFigmaColor("F3F3F4"),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: FancyText(
                          "-",
                          size: 40,
                          // weight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  FancyText(
                    "$cariableWeight",
                    size: 50,
                    weight: FontWeight.w900,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      // isContinousBorder: false,
                      radius: 40,
                      height: 50,
                      width: 50,
                      action: () {
                        cariableWeight++;
                        setState(() {});
                      },

                      backgroundColor: getFigmaColor("F3F3F4"),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: FancyText(
                          "+",
                          size: 30,
                          // weight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Align(
              alignment: Alignment.center,
              child: FancyText("I can lift around 25kg.")),
        ],
      ),
    );
  }
}

class AiCoachChatPage6 extends StatefulWidget {
  const AiCoachChatPage6({super.key});

  @override
  State<AiCoachChatPage6> createState() => _AiCoachChatPage6State();
}

class _AiCoachChatPage6State extends State<AiCoachChatPage6> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "What’s your current weight in kilograms? Please answer truthfully.",
              ),
              const Spacer(),
              Align(
                  alignment: Alignment.centerRight,
                  child: FancyText("My current weight is")),
              Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      "1",
                      "2",
                      "8",
                    ]
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FancyContainer(
                              // isContinousBorder: false,
                              radius: 150,
                              backgroundColor: getFigmaColor("F3F3F4"),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 17, vertical: 8.0),
                                child: FancyText(
                                  e,
                                  size: 48,
                                  weight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage5 extends StatefulWidget {
  const AiCoachChatPage5({super.key});

  @override
  State<AiCoachChatPage5> createState() => _AiCoachChatPage5State();
}

class _AiCoachChatPage5State extends State<AiCoachChatPage5> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "How much time range will you spend each week?",
              ),
              const Spacer(),
              // Align(
              //     alignment: Alignment.centerRight,
              //     child: FancyText("Select your workout frequency.")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FancyText(
                    "Time Spend",
                    weight: FontWeight.w900,
                  ),
                  FancyText("minutes"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0),
                child: RangeSliderWidget(
                  functionToUpdateValues: (p0, p1) {},
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage4 extends StatefulWidget {
  const AiCoachChatPage4({super.key});

  @override
  State<AiCoachChatPage4> createState() => _AiCoachChatPage4State();
}

class _AiCoachChatPage4State extends State<AiCoachChatPage4> {
  String? menuValue;
  String? selectedBodyPart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "How many days per week do you plan to workout?",
              ),
              const Spacer(),
              Align(
                  alignment: Alignment.centerRight,
                  child: FancyText("Select your workout frequency.")),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  FancyContainer(
                    backgroundColor: getFigmaColor("F3F3F4"),
                    // height: 40,
                    width: 150,
                    radius: 20,
                    isContinousBorder: false,
                    // nulledAlign: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        "1",
                        "2",
                        "3",
                        "4",
                        "5",
                        "6",
                      ]
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: FancyContainer(
                                radius: 15,
                                isContinousBorder: false,
                                action: () {
                                  selectedBodyPart = e;
                                  setState(() {});
                                },
                                backgroundColor: selectedBodyPart != e
                                    ? getFigmaColor("F3F3F4")
                                    : Colors.white,
                                // height: 40,
                                // nulledAlign: true,

                                height: 40,
                                child: Text(e),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class AiCoachChatPage2 extends StatefulWidget {
  const AiCoachChatPage2({super.key});

  @override
  State<AiCoachChatPage2> createState() => _AiCoachChatPage2State();
}

class _AiCoachChatPage2State extends State<AiCoachChatPage2> {
  String? menuValue;
  String? selectedBodyPart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Hey, Makise! I’m Coach Sandow AI, and I’ll help you get fit with a personalized fitness plan. Are you ready?",
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      "Leg",
                      "Arm",
                      "Shoulder",
                      "Bicep",
                      "Browse",
                    ]
                        .map(
                          (e) => buildLeftButtons(e),
                        )
                        .toList(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildLeftButtons(String text) {
    bool isSelected = selectedBodyPart == text;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        action: () {
          selectedBodyPart = text;
          setState(() {});
        },
        backgroundColor: isSelected ? Colors.black : getFigmaColor("F3F3F4"),
        // height: 40,
        // nulledAlign: true,
        isContinousBorder: false,
        radius: 15,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 12.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FancyText(
                text,
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 20,
                child: buildTailedAppArrow(
                  isLeft: false,
                  iconColor: isSelected ? null : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachChatPage1 extends StatefulWidget {
  const AiCoachChatPage1({super.key});

  @override
  State<AiCoachChatPage1> createState() => _AiCoachChatPage1State();
}

class _AiCoachChatPage1State extends State<AiCoachChatPage1> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "Hey, Makise! I’m Coach Sandow AI, and I’ll help you get fit with a personalized fitness plan. Are you ready?",
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: Colors.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyContainer(
                          backgroundColor: Colors.black,
                          // height: 40,
                          // nulledAlign: true,
                          isContinousBorder: false,
                          radius: 15,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 12.0,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FancyText(
                                  "Yes, Start",
                                  // size: 16,
                                  // textColor: Colors.white,
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 7),
                                SizedBox(
                                    width: 20,
                                    child: buildTailedAppArrow(isLeft: false)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      FancyContainer(
                        backgroundColor: getFigmaColor("FEE2E2"),
                        // height: 40,
                        // nulledAlign: true,
                        isContinousBorder: false,
                        radius: 15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 12.0,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FancyText(
                                "No, Go Back",
                                // size: 16,
                                // textColor: Colors.white,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(width: 7),
                              const SizedBox(
                                width: 30,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AiCoachIntroPage extends StatefulWidget {
  const AiCoachIntroPage({super.key});

  @override
  State<AiCoachIntroPage> createState() => _AiCoachIntroPageState();
}

class _AiCoachIntroPageState extends State<AiCoachIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/female_robot.png",
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.warning_rounded,
                                color: getFigmaColor("FED7AA"),
                              ),
                              const SizedBox(width: 7),
                              FancyText(
                                "Get Up Now!",
                                size: 16,
                                textColor: Colors.white,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.directions_run_rounded,
                                color: getFigmaColor("E9D5FF"),
                              ),
                              const SizedBox(width: 7),
                              FancyText(
                                "Get Up Now!",
                                size: 16,
                                textColor: Colors.white,
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
                          padding: const EdgeInsets.all(8.0),
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
                              const SizedBox(width: 7),
                              FancyText(
                                "Do 588 Reps!",
                                size: 16,
                                textColor: Colors.white,
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
                        const SizedBox(height: 10),
                        FancyText(
                          "Elevate your training with AI fitness coach.",
                          textAlign: TextAlign.center,
                          rawTextStyle: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: getFigmaColor("676C75")),
                        ),
                        const SizedBox(height: 20),
                        FancyContainer(
                          backgroundColor: Colors.black,
                          // height: 40,
                          // nulledAlign: true,
                          isContinousBorder: false,
                          radius: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FancyText(
                                  "Get Up Now!",
                                  size: 16,
                                  textColor: Colors.white,
                                ),
                                const SizedBox(width: 7),
                                const Icon(
                                  Icons.search,
                                  color: Colors.white,
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

class HeartRateHistoryPage extends StatefulWidget {
  const HeartRateHistoryPage({super.key});

  @override
  State<HeartRateHistoryPage> createState() => _HeartRateHistoryPageState();
}

class _HeartRateHistoryPageState extends State<HeartRateHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopBar(context),
                Row(
                  children: [
                    FancyText(
                      "251 Total",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    FancyText(
                      "Newest First",
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: getFigmaColor("676C75")),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                        height: 15,
                        child: Image.asset("assets/images/wifiLike_logo.png")),
                  ],
                ),
                const SizedBox(height: 5),
                ...List.filled(4, _buildHeartRateHistoryCard())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeartRateHistoryCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FancyContainer(
        radius: 30,
        backgroundColor: getFigmaColor("F3F3F4"),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              LineChartForHeartRateHistory(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: FancyText(
                            "82.5",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FancyText(
                            "bpm",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: getFigmaColor("676C75"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 30,
                      child: buildAppArrow(isLeft: false),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FancyText(
                      "Jan 12, 2028",
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
                      "Light Jogging",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        color: getFigmaColor("676C75"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: Colors.white,
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
                  "Heart Rate History",
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

class HeartRatePage extends StatefulWidget {
  const HeartRatePage({super.key});

  @override
  State<HeartRatePage> createState() => _HeartRatePageState();
}

class _HeartRatePageState extends State<HeartRatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                          borderColor: Colors.white.withAlpha(200),
                          borderThickness: 4,
                          backgroundColor: Colors.black,
                          child: const Icon(Icons.add, color: Colors.white),
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

                                  backgroundColor: Colors.white,
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

                                  backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
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

class AiSuggesstionPage extends StatefulWidget {
  const AiSuggesstionPage({super.key});

  @override
  State<AiSuggesstionPage> createState() => _AiSuggesstionPageState();
}

class _AiSuggesstionPageState extends State<AiSuggesstionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.question_mark_rounded,
                              color: Colors.white,
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
                                child: const Icon(
                                  Icons.ac_unit_sharp,
                                  color: Colors.white,
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

class HydrationHistoryPage extends StatefulWidget {
  const HydrationHistoryPage({super.key});

  @override
  State<HydrationHistoryPage> createState() => _HydrationHistoryPageState();
}

class _HydrationHistoryPageState extends State<HydrationHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Hydration History",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    FancyText(
                      "All History ",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FancyText(
                      "(20)",
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: getFigmaColor("676C75")),
                    ),
                    const Spacer(),
                    SizedBox(
                        height: 15,
                        child: Image.asset(
                            "assets/images/appIcon-calendarFilled.pngfilled.png")),
                    FancyText(
                      "Jan 2023",
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: getFigmaColor("676C75")),
                    ),
                  ],
                ),
                Column(
                  children: List.filled(
                      10,
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: FancyContainer(
                          backgroundColor: getFigmaColor("F3F3F4"),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  child: Image.asset(
                                      "assets/images/waterCupMini.png"),
                                ),
                                const SizedBox(width: 10),
                                FancyText(
                                  "All History ",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                FancyText(
                                  "100ml",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: getFigmaColor("676C75"),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                FancyText(
                                  "11:25 AM",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: getFigmaColor("9EA0A5"),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                    height: 15,
                                    child: buildAppArrow(isLeft: false))
                              ],
                            ),
                          ),
                        ),
                      )),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class HydrationDialog extends StatefulWidget {
  const HydrationDialog({super.key});

  @override
  State<HydrationDialog> createState() => _HydrationDialogState();
}

class _HydrationDialogState extends State<HydrationDialog> {
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
                        height: 400,
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                child: Image.asset(
                                    "assets/images/waterBottleImage.png"),
                              ),
                              FancyText("Hydrate 250ml?",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    // weight: FontWeight.bold,
                                    //   size: 24,
                                    //   textAlign: TextAlign.center,
                                  )),
                              FancyText(
                                "Do you want to take a full bottle of water for today?",
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
                                  backgroundColor: Colors.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Yes, Hydrate",
                                        textColor: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      const Icon(
                                        Icons.check,
                                        color: Colors.white,
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
                FancyContainer(
                  backgroundColor: getFigmaColor("F3F3F4"),
                  width: 30,
                  height: 30,
                  radius: 30,
                  child: const Icon(Icons.close),
                )
              ],
            )),
      ),
    );
  }
}

class DrinkWaterScreen extends StatefulWidget {
  const DrinkWaterScreen({super.key});

  @override
  State<DrinkWaterScreen> createState() => _DrinkWaterScreenState();
}

DateTime today = DateTime.now();

class _DrinkWaterScreenState extends State<DrinkWaterScreen> {
  // CleanCalendarController calendarController = CleanCalendarController(
  //   minDate: Moment(today).startOfMonth(),
  //   maxDate: Moment(today).endOfMonth(),
  //   endDateSelected: DateTime(today.year, today.month, 10),
  //   initialDateSelected: DateTime(today.year, today.month, 20),
  // );

  @override
  Widget build(BuildContext context) {
    // _controller.cr_calendar sndhsjdjsdhvshdsdhs
    List<String> listOfImageUrls = [
      "assets/images/drinkWaterImage-1.png",
      "assets/images/drinkWaterImage-2.png",
      "assets/images/drinkWaterImage-3.png",
    ];
// swiperController.
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                buildBackArrow(context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyText(
                    "Drink Water",
                    // "Sandow Score",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Center(
                child: FancyText(
                  "Today, I would like to drink",
                  weight: FontWeight.bold,
                  size: 27,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            // SizedBox(height: 30),
            Expanded(
              child: Center(
                child: Swiper(
                  outer: true,
                  itemCount: listOfImageUrls.length,
                  viewportFraction: .5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyContainer(
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 150,
                        width: 242,
                        radius: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: FancyContainer(
                            hasBorder: (currentIndex == index) ? true : false,
                            // borderColor: (currentIndex == index) ? true : false,

                            height: double.infinity,
                            width: double.infinity,
                            radius: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: Image.asset(listOfImageUrls[index]),
                                  ),
                                  FancyText(
                                    "Glass of Water",
                                    // weight: FontWeight.bold,
                                    // size: 30,
                                    // textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  FancyText(
                                    "100ml",
                                    // weight: FontWeight.bold,
                                    // size: 30,
                                    // textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 14,
                                      color: getFigmaColor("676C75"),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  FancyText(
                                    "8.4 fluid oz",
                                    // weight: FontWeight.bold,
                                    // size: 30,
                                    // textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: getFigmaColor("9EA0A5"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                    //  Image.network(
                    //   "https://via.placeholder.com/350x150",
                    //   fit: BoxFit.fill,
                    // );
                  },
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        activeColor: Colors.black,
                        color: getFigmaColor("F3F3F4"),
                        activeSize: 10),
                  ),
                  // indicatorLayout: PageIndicatorLayout.SLIDE,
                  onIndexChanged: (value) {
                    currentIndex = value;
                    setState(() {});
                  },
                  control: const SwiperControl(
                    iconNext: IconData(0),
                    iconPrevious: IconData(0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FancyContainer(
                height: 45,
                isContinousBorder: false,
                radius: 14,
                width: double.infinity,
                backgroundColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FancyText(
                      "Add Drink",
                      textColor: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int currentIndex = 1;
}

class CascadedBottomSheet extends StatefulWidget {
  const CascadedBottomSheet({super.key});

  @override
  State<CascadedBottomSheet> createState() => _CascadedBottomSheetState();
}

class _CascadedBottomSheetState extends State<CascadedBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child: _buildCascadedBottomsheet(context)),
    );
  }

  Column _buildCascadedBottomsheet(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FancyContainer(
          height: MediaQuery.of(context).size.height * .65,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white.withAlpha(50),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white.withAlpha(200),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: FancyContainer(
                  isContinousBorder: false,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          FancyContainer(
                            width: 50,
                            height: 5,
                            backgroundColor: getFigmaColor("D7D8D9"),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyText(
                                "Filter sandow Score",
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
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
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FancyText(
                                      "From",
                                      rawTextStyle: GoogleFonts.workSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    FancyContainer(
                                      backgroundColor: getFigmaColor("F3F3F4"),
                                      radius: 15,
                                      isContinousBorder: false,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                              width: 15,
                                              child: Image.asset(
                                                "assets/images/Monotone_calendar_blank.png",
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            FancyText(
                                              Moment(DateTime.now()).ll,
                                              rawTextStyle:
                                                  GoogleFonts.workSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: getFigmaColor("393C43"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FancyText(
                                      "To",
                                      rawTextStyle: GoogleFonts.workSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    FancyContainer(
                                      backgroundColor: getFigmaColor("F3F3F4"),
                                      radius: 15,
                                      isContinousBorder: false,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                              width: 15,
                                              child: Image.asset(
                                                "assets/images/Monotone_calendar_blank.png",
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            // Icon(
                                            //   Icons.question_mark_outlined,
                                            //   size: 14,
                                            // ),
                                            FancyText(
                                              Moment(DateTime.now()).ll,
                                              rawTextStyle:
                                                  GoogleFonts.workSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: getFigmaColor("393C43"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          FancyText(
                            "Score Range",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RangeSliderWidget(
                            functionToUpdateValues: (p0, p1) {},
                          ),
                          const SizedBox(height: 10),
                          FancyText(
                            "Score Range",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                3,
                                (index) => (selectedIndex == index)
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FancyContainer(
                                          radius: 15,
                                          action: () {
                                            selectedIndex = null;
                                            setState(() {});
                                          },
                                          isContinousBorder: false,
                                          backgroundColor:
                                              getFigmaColor("2563EB"),
                                          hasBorder: true,
                                          borderColor: getFigmaColor("CAD9F9"),
                                          // withAlpha(100),
                                          borderThickness: 4,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.water_drop_sharp,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(width: 10),
                                                FancyText("Calorie",
                                                    textColor: Colors.white),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FancyContainer(
                                          radius: 15,
                                          action: () {
                                            selectedIndex = index;
                                            setState(() {});
                                          },
                                          isContinousBorder: false,
                                          backgroundColor:
                                              getFigmaColor("F3F3F4"),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.water_drop_sharp,
                                                  // color: Colors.white,
                                                ),
                                                const SizedBox(width: 10),
                                                FancyText(
                                                  "Calorie",
                                                  // textColor: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FancyContainer(
                              radius: 15,
                              width: 300,
                              height: 50,
                              action: () {},
                              isContinousBorder: false,
                              backgroundColor: Colors.black,
                              //  getFigmaColor("F3F3F4"),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FancyText(
                                      "Filter Sandow Score (25)",
                                      textColor: Colors.white,
                                    ),
                                    const SizedBox(width: 10),
                                    const Icon(
                                      Icons.tune_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  int? selectedIndex = 2;
}

class DateTimeRangableSelector extends StatefulWidget {
  const DateTimeRangableSelector({super.key});

  @override
  State<DateTimeRangableSelector> createState() =>
      _DateTimeRangableSelectorState();
}

class _DateTimeRangableSelectorState extends State<DateTimeRangableSelector> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: FancyContainer(
                  backgroundColor: Colors.white,
                  radius: 40,
                  // hasBorder: true,
                  height: 420,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: .0, vertical: 12),
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              FancyContainer(
                                  child: cr_calendar.CrDatePickerDialog(
                                pickerProperties:
                                    cr_calendar.DatePickerProperties(
                                  okButtonBuilder: (onPress) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FancyContainer(
                                        radius: 20,
                                        backgroundColor: Colors.black,
                                        action: () {
                                          onPress?.call();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: FancyText(
                                            "select",
                                            textColor: Colors.white,
                                          ),
                                        )),
                                  ),
                                  controlBarTitleBuilder: (date) {
                                    return Text(Moment(date).ll);
                                  },
                                  pickerTitleAlignInLandscape:
                                      Alignment.centerRight,
                                  dayItemBuilder: _dayItemBuilder,
                                  pickerTitleBuilder: (date) {
                                    return const SizedBox.shrink();
                                  },
                                  cancelButtonBuilder: (onPress) {
                                    return FancyContainer(
                                        radius: 20,
                                        backgroundColor:
                                            getFigmaColor("F3F3F4"),
                                        action: () {
                                          onPress?.call();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: FancyText("cancel"),
                                        ));
                                  },
                                  onDateRangeSelected:
                                      (rangeBegin, rangeEnd) {},
                                  padding: const EdgeInsets.all(0),
                                  // pickerMode: TouchMode.singleTap,
                                  backButton: SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: FancyContainer(
                                          radius: 20,
                                          backgroundColor:
                                              getFigmaColor("F3F3F4"),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: buildAppArrow(),
                                          ))),
                                  forwardButton: SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: FancyContainer(
                                      radius: 20,
                                      // action: () {
                                      //   // calendarController.
                                      // },
                                      backgroundColor: getFigmaColor("F3F3F4"),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: buildAppArrow(isLeft: false),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FancyContainer(
              backgroundColor: Colors.grey[300],
              radius: 30,
              nulledAlign: false,
              width: 40,
              height: 40,
              action: () {
                Get.back();
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.close),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _dayItemBuilder(DayItemProperties properties) {
    bool isSaturday = Moment(properties.date)
            .differenceInDays(Moment(properties.date).nextSaturday())
            .abs() ==
        7;
    bool isSunday = Moment(properties.date)
            .differenceInDays(Moment(properties.date).nextSunday())
            .abs() ==
        7;

    // Moment(properties.date).;
    // Moment(properties.date).isSameLocalWeekAs(
    //     Moment(properties.date).nextSunday());

    Widget displayedWidget = AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: FancyContainer(
          backgroundColor: Colors.grey.withAlpha(40),
          height: 50,
          width: 50,
          child: Text(
            properties.date.day.toString(),
          ),
        ),
      ),
    );
    if (properties.isSelected) {
      displayedWidget = AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: FancyContainer(
            backgroundColor: getFigmaColor("F97316"),
            height: 50,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyText(
                  properties.date.day.toString(),
                  textColor: Colors.white,
                ),
                FancyContainer(
                  height: 3,
                  width: 3,
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
        ),
      );
    }
    if (properties.isInRange) {
      displayedWidget = AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: FancyContainer(
            backgroundColor: getFigmaColor("FFEDD5"),
            radius: 0,
            height: 50,
            width: 50,
            isContinousBorder: false,
            borderRadius: BorderRadius.horizontal(
              left: isSunday
                  ? const Radius.circular(7)
                  : const Radius.circular(0),
              right: isSaturday
                  ? const Radius.circular(7)
                  : const Radius.circular(0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyText(
                  properties.date.day.toString(),
                  size: 12,
                ),
                FancyContainer(
                  height: 3,
                  width: 3,
                  backgroundColor: getFigmaColor("F97316"),
                )
              ],
            ),
          ),
        ),
      );

      if (properties.isFirstInRange) {
        displayedWidget = AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
              // horizontal: 2.0,
            ),
            child: Stack(
              children: [
                FancyContainer(
                  backgroundColor: getFigmaColor("FFEDD5"),
                  // Colors.grey.withAlpha(200),
                  height: 50,
                  width: 50,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.circular(0),
                  // BorderRadius.horizontal(
                  //   left: Radius.circular(7),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyText(
                        properties.date.day.toString(),
                        textColor: Colors.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                ),
                FancyContainer(
                  backgroundColor: getFigmaColor("F97316"),
                  // Colors.grey.withAlpha(200),
                  height: 50,
                  width: 50,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.circular(7),
                  // BorderRadius.horizontal(
                  //   left: Radius.circular(7),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyText(
                        properties.date.day.toString(),
                        textColor: Colors.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
      if (properties.isLastInRange) {
        displayedWidget = AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
            ),
            child: Stack(
              children: [
                FancyContainer(
                  backgroundColor: getFigmaColor("FFEDD5"),
                  // Colors.grey.withAlpha(200),
                  height: 50,
                  width: 50,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.circular(0),
                  // BorderRadius.horizontal(
                  //   left: Radius.circular(7),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyText(
                        properties.date.day.toString(),
                        textColor: Colors.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                ),
                FancyContainer(
                  backgroundColor: getFigmaColor("F97316"),
                  // Colors.grey.withAlpha(200),
                  height: 50,
                  width: 50,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.circular(7),
                  // BorderRadius.horizontal(
                  //   left: Radius.circular(7),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FancyText(
                        properties.date.day.toString(),
                        textColor: Colors.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }

    return displayedWidget;
  }
}

class HydrationPage extends StatefulWidget {
  const HydrationPage({super.key});

  @override
  State<HydrationPage> createState() => _HydrationPageState();
}

class _HydrationPageState extends State<HydrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              buildAppBar(context, "hydration"),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/waterDrop.png",
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        FancyText(
                          "500",
                          weight: FontWeight.w800,
                          size: 60,
                        ),
                        const SizedBox(width: 10),
                        FancyText(
                          "ml",
                          weight: FontWeight.w500,
                          size: 30,
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: getFigmaColor("676C75"),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    FancyText(
                      "You need 1500ml for today.",
                      textColor: getFigmaColor("676C75"),
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: getFigmaColor("676C75"),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: FancyContainer(
                        height: 300,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(50)),
                        width: double.infinity,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FancyContainer(
                              height: 130,
                              width: double.infinity,
                              // radius: 30,
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(50)),
                              backgroundColor: getFigmaColor("2563EB"),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FancyContainer(
                                        // height: 100,
                                        // width: double.infinity,
                                        nulledAlign: true,
                                        radius: 15,
                                        isContinousBorder: false,
                                        backgroundColor: Colors.white,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.question_mark),
                                        ),
                                      ),
                                      FancyContainer(
                                        radius: 20,
                                        nulledAlign: true,
                                        isContinousBorder: false,
                                        backgroundColor: Colors.white,
                                        child: const Padding(
                                          padding: EdgeInsets.all(18.0),
                                          child: Icon(
                                            Icons.add,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                      FancyContainer(
                                        // height: 100,
                                        // width: double.infinity,
                                        nulledAlign: true,
                                        radius: 15,
                                        isContinousBorder: false,
                                        backgroundColor: Colors.white,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.checklist_rounded,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Padding buildAppBar(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 38.0),
    child: FancyContainer(
      height: 50,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyContainer(
              // backgroundColor: Colors.red,
              child: buildBackArrow(context),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FancyText(
                title,
                // "Sandow Score",
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

class HaydrationFull extends StatefulWidget {
  const HaydrationFull({super.key});

  @override
  State<HaydrationFull> createState() => _HaydrationFullState();
}

class _HaydrationFullState extends State<HaydrationFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              FancyContainer(
                backgroundColor: getFigmaColor("2563EB"),
              ),
              Column(
                children: [
                  buildAppBar(context, "hydration"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/waterDrop.png",
                        height: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      FancyText(
                        "2,500",
                        weight: FontWeight.w800,
                        textColor: Colors.white,
                        size: 60,
                      ),
                      const SizedBox(width: 10),
                      FancyText(
                        "ml",
                        weight: FontWeight.w500,
                        size: 30,
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          // color: getFigmaColor("676C75"),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  FancyText(
                    "You are fully hydrated for today.",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FancyContainer(
                            // height: 100,
                            // width: double.infinity,
                            nulledAlign: true,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.question_mark),
                            ),
                          ),
                          FancyContainer(
                            radius: 20,
                            nulledAlign: true,
                            isContinousBorder: false,
                            backgroundColor: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                          ),
                          FancyContainer(
                            // height: 100,
                            // width: double.infinity,
                            nulledAlign: true,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: Colors.white,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.checklist_rounded,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Padding buildAppBar(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FancyContainer(
                // backgroundColor: Colors.red,
                child: buildBackArrow(
                  context,
                  backgroundColor: Colors.white.withAlpha(50),
                  iconColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  title,
                  // "Sandow Score",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              FancyContainer(
                height: 30,
                width: 30,
                radius: 20,
                backgroundColor: Colors.white.withAlpha(50),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.settings_outlined,
                    weight: .2,
                    size: 15,
                    color: Colors.white,
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
