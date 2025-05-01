import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/customs/rater_widget.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
