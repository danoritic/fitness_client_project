import 'package:fitness_client_project/features/aiCoachingSession/widgets/score_card.dart';
import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SandowScoreHistory extends StatefulWidget {
  const SandowScoreHistory({super.key});

  @override
  State<SandowScoreHistory> createState() => _SandowScoreHistoryState();
}

class _SandowScoreHistoryState extends State<SandowScoreHistory> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        appBar: AppBar(
          leading: SizedBox(
            height: 30,
            width: 30,
            child: Center(child: buildBackArrow(context)),
          ),
          elevation: 0,
          backgroundColor: usedAppColor.white,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FancyText(
              "Sandow Score History",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: usedAppColor.white,
        //  usedAppColor.f3f3f4,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      // buildBackArrow(context),
                      FancyContainer(
                        isContinousBorder: true,
                        radius: 40,
                        height: 20,
                        width: 20,
                        // backgroundColor: usedAppColor.f3f3f4,
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: buildAppArrow()
                            // Image.asset("assets/images/appArrow.png"),
                            ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: FancyText(
                        "All Scores ",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: FancyText(
                        "(241)",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15.w,
                          fontWeight: FontWeight.bold,
                          color: usedAppColor.Color9EA0A5,
                        ),
                      ),
                    ),
                    Spacer(),
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
                Column(
                  children: List.generate(
                    4,
                    (index) => ScoreCard(),
                  ),
                ),
                SizedBox(height: 90),
              ],
            ),
          ),
        )
        //  Center(
        //   child: InkWell(
        //     onTap: () {},
        //     child: Image.asset(
        //       "assets/images/sandowScore.png",
        //       fit: BoxFit.fitWidth,
        //       alignment: Alignment.topCenter,
        //       width: double.infinity,
        //     ),
        //   ),
        // ),
        );
  }
}
