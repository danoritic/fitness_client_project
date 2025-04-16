import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

DateTime today = DateTime.now();

class _TestScreenState extends State<TestScreen> {
  CleanCalendarController calendarController = CleanCalendarController(
    minDate: Moment(today).startOfMonth(),
    maxDate: Moment(today).endOfMonth(),
    endDateSelected: DateTime(today.year, today.month, 10),
    initialDateSelected: DateTime(today.year, today.month, 20),
  );

  // CrCalendarController _controller = CrCalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildScrollablesCalendar(),
          // FancyContainer(
          //   radius: 40,
          //   hasBorder: true,
          //   height: 380,
          //   child: Padding(
          //     padding:
          //         const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
          //     child: Column(
          //       children: [
          //         Expanded(
          //           child: Stack(
          //             children: [
          //               FancyContainer(
          //                   // child:
          //                   //  CrCalendar(
          //                   //   initialDate: DateTime.now(),
          //                   //   controller: _controller,
          //                   // ),
          //                   ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     SizedBox(
          //                         height: 25,
          //                         width: 25,
          //                         child: FancyContainer(
          //                             radius: 20,
          //                             backgroundColor: getFigmaColor("F3F3F4"),
          //                             child: Padding(
          //                               padding: const EdgeInsets.all(6.0),
          //                               child: buildAppArrow(),
          //                             ))),
          //                     SizedBox(
          //                         height: 25,
          //                         width: 25,
          //                         child: FancyContainer(
          //                             radius: 20,
          //                             action: () {
          //                               // calendarController.
          //                             },
          //                             backgroundColor: getFigmaColor("F3F3F4"),
          //                             child: Padding(
          //                               padding: const EdgeInsets.all(6.0),
          //                               child: buildAppArrow(isLeft: false),
          //                             ))),
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //         Row(
          //           children: [
          //             Expanded(
          //               child: FancyContainer(
          //                   radius: 20,
          //                   backgroundColor: getFigmaColor("F3F3F4"),
          //                   child: Padding(
          //                     padding: const EdgeInsets.all(6.0),
          //                     child: FancyText("cancel"),
          //                   )),
          //             ),
          //             SizedBox(width: 20),
          //             Expanded(
          //               child: FancyContainer(
          //                   radius: 20,
          //                   backgroundColor: Colors.black,
          //                   child: Padding(
          //                     padding: const EdgeInsets.all(6.0),
          //                     child: FancyText(
          //                       "select",
          //                       textColor: Colors.white,
          //                     ),
          //                   )),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }

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
                    child: ScrollableCleanCalendar(
                      dayRadius: 15,
                      daySelectedBackgroundColor: getFigmaColor("F97316"),
                      daySelectedBackgroundColorBetween:
                          getFigmaColor("FFEDD5"),
                      padding: EdgeInsets.all(5),
                      calendarController: calendarController,
                      layout: Layout.BEAUTY,
                      scrollController: ScrollController(),
                      calendarCrossAxisSpacing: 0,
                    ),
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
                SizedBox(width: 20),
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
