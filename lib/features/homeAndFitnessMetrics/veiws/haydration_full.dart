import 'package:card_swiper/card_swiper.dart';
import 'package:cr_calendar/cr_calendar.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/haydration_full.dart';
import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:cr_calendar/cr_calendar.dart' as cr_calendar;
import 'package:provider/provider.dart';

class HaydrationFull extends StatefulWidget {
  const HaydrationFull({super.key});

  @override
  State<HaydrationFull> createState() => _HaydrationFullState();
}

class _HaydrationFullState extends State<HaydrationFull> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
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
                          // color: Colors.Color676C75,
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
        // backgroundColor:Colors.white,
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
                child: Padding(
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
