import 'package:cr_calendar/cr_calendar.dart';
import 'package:cr_calendar/cr_calendar.dart' as cr_calendar;

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';
// import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
// import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
// import 'package:scrollable_clean_calendar/utils/enums.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

DateTime today = DateTime.now();

class _TestScreenState extends State<TestScreen> {
  // CleanCalendarController calendarController = CleanCalendarController(
  //   minDate: Moment(today).startOfMonth(),
  //   maxDate: Moment(today).endOfMonth(),
  //   endDateSelected: DateTime(today.year, today.month, 10),
  //   initialDateSelected: DateTime(today.year, today.month, 20),
  // );

  CrCalendarController _controller = CrCalendarController();
  @override
  Widget build(BuildContext context) {
    // _controller.cr_calendar sndhsjdjsdhvshdsdhs

    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [buildCascadedBottomSheets(context)],
        ));
  }

  FancyContainer buildCascadedBottomSheets(BuildContext context) {
    return FancyContainer(
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
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
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
                                          rawTextStyle: GoogleFonts.workSans(
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
                                          rawTextStyle: GoogleFonts.workSans(
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
                      SizedBox(height: 10),
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
                      SizedBox(height: 10),
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
                                      backgroundColor: getFigmaColor("2563EB"),
                                      hasBorder: true,
                                      borderColor: getFigmaColor("CAD9F9"),
                                      // withAlpha(100),
                                      borderThickness: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.water_drop_sharp,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 10),
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
                                      backgroundColor: getFigmaColor("F3F3F4"),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.water_drop_sharp,
                                              // color: Colors.white,
                                            ),
                                            SizedBox(width: 10),
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
                                SizedBox(width: 10),
                                Icon(
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
    );
  }

  int? selectedIndex = 2;

  FancyContainer _buildScrollablesCalendar() {
    return FancyContainer(
      radius: 40,
      hasBorder: true,
      height: 380,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  FancyContainer(
                      // child:
                      //  ScrollableCleanCalendar(
                      //   dayRadius: 15,
                      //   daySelectedBackgroundColor: getFigmaColor("F97316"),
                      //   daySelectedBackgroundColorBetween:
                      //       getFigmaColor("FFEDD5"),
                      //   padding: const EdgeInsets.all(5),
                      //   calendarController: calendarController,
                      //   layout: Layout.BEAUTY,
                      //   scrollController: ScrollController(),
                      //   calendarCrossAxisSpacing: 0,
                      // ),
                      ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: FancyContainer(
                                radius: 20,
                                backgroundColor: getFigmaColor("F3F3F4"),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: buildAppArrow(),
                                ))),
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: FancyContainer(
                                radius: 20,
                                action: () {
                                  // calendarController.
                                },
                                backgroundColor: getFigmaColor("F3F3F4"),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: buildAppArrow(isLeft: false),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FancyContainer(
                      radius: 20,
                      backgroundColor: getFigmaColor("F3F3F4"),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FancyText("cancel"),
                      )),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: FancyContainer(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FancyText(
                          "select",
                          textColor: Colors.white,
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
