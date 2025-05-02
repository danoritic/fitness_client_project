import 'dart:math';

import 'package:cr_calendar/cr_calendar.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/veiws.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/dashed_lines.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/customs/flow_amination_screen.dart';
import 'package:fitness_client_project/utils/customs/rater_widget.dart';
import 'package:fitness_client_project/utils/customs/revealable_tile.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
export "overFlow_ofTestScreen.dart";
import 'package:easy_date_timeline/easy_date_timeline.dart'
    as easy_date_timeline;
import 'package:interactive_slider/interactive_slider.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:uuid/uuid.dart';

// TestScreen
// CancelThisAppointmentPage
// CoachingSchedulePage

// assets/images/creditCardBG.png

// class TestScreen extends StatefulWidget {
//   const TestScreen({super.key});

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     context.watch<AppColors>(); return Scaffold(
// backgroundColor:usedAppColor.white,
// body:);
//   }
// }

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  CrCalendarController _controller = CrCalendarController(events: [
    CalendarEventModel(name: "name", begin: DateTime.now(), end: DateTime.now())
  ]);
  int? selectedTimeSlot;
  TextEditingController couponTextEditingController = TextEditingController();
  bool isCouponTextFieldFocused = true;

  Map paymentDetails = {
    "1x Coaching Package (30min)": 250.00,
    "Admin Fee": 45.00,
    "Coupon Discount": 15.00,
  };
  FlowWidgetController flowWidgetController =
      FlowWidgetController(listOfController: [
    HeadTailWidgetController(
      popbgLabel: Icon(Icons.check_rounded),

      // Image.asset("assets/icons/flowIcon1Unhighlighted.png"),
      popLabel: Icon(
        Icons.check_rounded,
        color: usedAppColor.f97316,
      ),
      isTailVisible: false,
      isEnded: true,
    ),
    HeadTailWidgetController(
      popbgLabel: Icon(
        Icons.check_rounded,
        size: 10,
      ),
      popLabel: Icon(
        Icons.check_rounded,
        color: usedAppColor.f97316,
      ),
    ),
    HeadTailWidgetController(
      popbgLabel: Icon(
        Icons.check_rounded,
        size: 10,
      ),
      popLabel: Icon(Icons.check_rounded, color: usedAppColor.f97316, size: 10),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FlowWidget(
                flowWidgetController: flowWidgetController,
              )
            ],
          ),
        ));
  }

// FlowWidget
  SingleChildScrollView _buildSlide3() {
    return SingleChildScrollView(
        child: Column(
      children: [
        _buildCouponSection(),
        SizedBox(height: 10),
        _buildPaymentMethodSection(),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: FancyText(
            "Summary",
            rawTextStyle: GoogleFonts.workSans(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(color: usedAppColor.D7D8D9),
        SizedBox(height: 10),
        _buildItemLike(),
        SizedBox(height: 10),
        Divider(color: usedAppColor.D7D8D9),
        SizedBox(height: 1),
        _buildDateSection(),
        SizedBox(height: 1),
        Divider(color: usedAppColor.D7D8D9),
        SizedBox(height: 1),
        _buildTimeSection(),
        SizedBox(height: 1),
        Divider(color: usedAppColor.D7D8D9),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: FancyText(
            "Payment Detail",
            rawTextStyle: GoogleFonts.workSans(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 5),
        Column(
          children: paymentDetails.keys.map(
            (k) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FancyText(
                    "$k",
                    rawTextStyle: GoogleFonts.workSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: usedAppColor.Color676C75),
                  ),
                  FancyText(
                    "${paymentDetails[k]}",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
        SizedBox(height: 1),
        Divider(color: usedAppColor.D7D8D9),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Grand Total",
              rawTextStyle: GoogleFonts.workSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: usedAppColor.Color676C75),
            ),
            FancyText(
              "${paymentDetails.values.fold(
                0,
                (previousValue, element) {
                  return element + previousValue;
                },
              )}",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        FancyContainer(
          backgroundColor: usedAppColor.black,
          isContinousBorder: false,
          radius: 20,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    FancyText(
                      "\$87.52",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: usedAppColor.white,
                      ),
                    ),
                    FancyText(
                      "Total Price",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        color: usedAppColor.white,
                      ),
                    ),
                  ],
                ),
                FancyContainer(
                  backgroundColor: usedAppColor.f97316,
                  isContinousBorder: false,
                  height: 50,
                  radius: 20 - 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        FancyText(
                          "Checkout",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: usedAppColor.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox.square(
                            dimension: 20,
                            child: Image.asset(
                                "assets/images/appIcon-shoppingCart.png"))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }

  Padding _buildTimeSection() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(children: [
        SizedBox.square(
          dimension: 13,
          child: Image.asset(
            "assets/images/appIcon-clock.png",
          ),
        ),
        SizedBox(width: 5),
        FancyText(
          "11:AM PST",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        FancyText(
          "Change",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 12,
            // fontWeight: FontWeight.bold,
            color: getFigmaColor("F97316"),
          ),
        )
      ]),
    );
  }

  Padding _buildDateSection() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(children: [
        SizedBox.square(
          dimension: 13,
          child: Image.asset(
            "assets/images/appIcon-calendarFilled.png",
          ),
        ),
        SizedBox(width: 5),
        FancyText(
          "Nov 25, 2025",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        FancyText(
          "Change",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 12,
            // fontWeight: FontWeight.bold,
            color: getFigmaColor("F97316"),
          ),
        )
      ]),
    );
  }

  FancyContainer _buildItemLike() {
    return FancyContainer(
      height: 85,
      radius: 40,
      nulledAlign: true,
      // backgroundColor: usedAppColor.f3f3f4,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 64 / 72,
              child: FancyContainer(
                radius: 40,
                width: 40,
                // backgroundColor: Colors.red,
                child: Image.asset(
                  "assets/images/sttretchingWoman.png",
                  // width: double.infinity,
                  fit: BoxFit.cover,
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
                        backgroundColor: usedAppColor.f3f3f4,
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        FancyText(
                          "Zen Flow Yoga",
                          // weight: FontWeight.bold,
                          // size: 12,
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox.square(
                          dimension: 12,
                          child: Image.asset(
                            "assets/images/coachSelectionPageIcon-wavyCheck.png",
                            color: getFigmaColor("2563EB"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: getFigmaColor("F97316"),
                        size: 13,
                      ),
                      const SizedBox(width: 5),
                      FancyText(
                        "1.8",
                        weight: FontWeight.w500,
                        size: 12,
                        textColor: usedAppColor.Color676C75,
                      ),
                      const SizedBox(width: 5),
                      FancyContainer(
                        height: 5,
                        width: 5,

                        // isContinousBorder: false,
                        backgroundColor: usedAppColor.D7D8D9,
                      ),
                      const SizedBox(width: 5),
                      SizedBox(
                        height: 12,
                        child: Icon(
                          Icons.person_rounded,
                          color: usedAppColor.Color9EA0A5,
                          size: 12,
                        ),
                        //  Image.asset(
                        //     "assets/images/insightIcon-dumbell.png"),
                      ),
                      const SizedBox(width: 2),
                      FancyText(
                        "21 Clients",
                        weight: FontWeight.w500,
                        size: 12,
                        textColor: usedAppColor.Color676C75,
                      ),
                    ],
                  )
                ],
              ),
            ),
            FancyText(
              "Change",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 12,
                // fontWeight: FontWeight.bold,
                color: getFigmaColor("F97316"),
              ),
            )
          ],
        ),
      ),
    );
  }

  int? selectedPaymentMethodIndex = 0;
  Column _buildPaymentMethodSection() {
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
          height: 60,
          radius: 30,
          backgroundColor: usedAppColor.f3f3f4,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                  value: selectedPaymentMethodIndex,
                  onChanged: (value) {
                    selectedPaymentMethodIndex = value;
                    setState(() {});
                  },
                  isExpanded: true,
                  iconStyleData: IconStyleData(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox.square(
                        dimension: 15,
                        child: buildAppArrowVertical(),
                      ),
                    ),
                  ),
                  items: paymentProviderList.map(
                    (element) {
                      int index = paymentProviderList.indexOf(element);
                      return DropdownMenuItem<int>(
                          value: index,
                          child: Row(
                            children: [
                              SizedBox.square(
                                dimension: 50,
                                child: Image.asset(
                                  element["image"],
                                ),
                              ),
                              // FancyText(
                              //   element["name"],
                              //   size: 12,
                              // ),
                            ],
                          ));
                    },
                  ).toList())),
        ),
      ],
    );
  }

  Column _buildCouponSection() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: FancyText(
            "Enter Coupon",
            rawTextStyle: GoogleFonts.workSans(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Number textField"
          bool isSelected = isCouponTextFieldFocused;
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: usedAppColor.f3f3f4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Icon(
                      Icons.check_box,
                      color: usedAppColor.f97316,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: couponTextEditingController,
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        isCouponTextFieldFocused = true;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "FIRSTTIME50",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );

          return Row(
            children: [
              Expanded(
                  child: isSelected
                      ? wrapWithselectedsBorder(child: child, radius: radius)
                      : child),
              SizedBox(width: 10),
              FancyContainer(
                height: 45,
                width: 70,
                radius: 15,
                isContinousBorder: false,
                backgroundColor: usedAppColor.f97316,
                child: FancyText(
                  "Use",
                  textColor: usedAppColor.white,
                ),
              )
            ],
          );
        }),
        SizedBox(height: 10),
        FancyContainer(
          hasBorder: true,
          radius: 10,
          isContinousBorder: false,
          borderColor: getFigmaColor("84CC16"),
          backgroundColor: getFigmaColor("ECFCCB"),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              SizedBox.square(
                dimension: 13,
                child: Image.asset(
                  "assets/images/appIcon-dollar.png",
                  color: getFigmaColor("84CC16"),
                ),
              ),
              SizedBox(width: 5),
              FancyText(
                "\$50 OFF Code successfully applied.",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        )
      ],
    );
  }

  SingleChildScrollView _buildSlide2() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildCalendarSection(),
          SizedBox(height: 10),
          Divider(color: usedAppColor.D7D8D9),
          SizedBox(height: 10),
          SizedBox(height: 10),
          _buildSelectedTimeSlotSection(),
          SizedBox(height: 10),
          Divider(color: usedAppColor.D7D8D9),
          SizedBox(height: 10),
          _buildTrainingTypeSection(),
          SizedBox(height: 10),
          Divider(color: usedAppColor.D7D8D9),
          SizedBox(height: 10),
          _buildGymLocationSection()
        ],
      ),
    );
  }

  Column _buildGymLocationSection() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: FancyText(
            "Gym Location",
            rawTextStyle: GoogleFonts.workSans(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 5),
        FancyContainer(
            // height: 45,
            // width: 30,

            radius: 40,
            backgroundColor: usedAppColor.f3f3f4,
            action: () {},
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    FancyContainer(
                      height: 80,
                      radius: 30,
                      hasBorder: true,
                      borderColor: usedAppColor.D7D8D9,
                      child: Image.asset(
                        "assets/images/mapImage.png".getThemeImage,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 1),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FancyText(
                              "Gold’s Gym Marina Bay Sands",
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                FancyText(
                                  "25.2km",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10),
                                FancyContainer(
                                  height: 5,
                                  width: 5,
                                  hasBorder: true,
                                  borderColor: usedAppColor.D7D8D9,
                                ),
                                SizedBox(width: 10),
                                FancyText(
                                  "221b Elementary Street",
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            FancyText(
                              "Show Direction",
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: usedAppColor.f97316,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ))),
        _buildBottomButton(),
      ],
    );
  }

  Column _buildCalendarSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Additional Comment",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                FancyContainer(
                  // backgroundColor: getFigmaColor("BABBBE"),
                  radius: 20,
                  height: 20,
                  width: 20,
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child:
                        Image.asset("assets/images/appIcon-calendarFilled.png"),
                  ),
                ),
                FancyText(
                  "Jan 2023",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: CrCalendar(
            initialDate: DateTime.now(),
            controller: _controller,
            dayItemBuilder: _dayItemBuilder,
            eventsTopPadding: 0,
          ),
        ),
        SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FancyContainer(
                  backgroundColor: getFigmaColor("F97316"),
                  radius: 10,
                  height: 10,
                  width: 10,
                ),
                SizedBox(width: 2),
                FancyText(
                  "Available",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Row(
              children: [
                FancyContainer(
                  backgroundColor: usedAppColor.black,
                  radius: 10,
                  height: 10,
                  width: 10,
                ),
                SizedBox(width: 2),
                FancyText(
                  "Not Available",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Row(
              children: [
                FancyContainer(
                  backgroundColor: getFigmaColor("2563EB"),
                  radius: 10,
                  height: 10,
                  width: 10,
                ),
                SizedBox(width: 2),
                FancyText(
                  "Remote",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column _buildTrainingTypeSection() {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Training Type",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            FancyContainer(
              backgroundColor: getFigmaColor("BABBBE"),
              radius: 20,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.question_mark_outlined,
                  size: 12,
                  color: usedAppColor.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        _buildLocationSelector(),
      ],
    );
  }

  FancyContainer _buildLocationSelector() {
    return FancyContainer(
      height: 45,
      // width: 30,
      radius: 10,
      isContinousBorder: false,
      action: () {
        print("sassasasas");
      },
      backgroundColor: usedAppColor.f3f3f4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            "Gym Visit",
            "Virtual",
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
                  backgroundColor: isSelected ? usedAppColor.white : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FancyText(
                      e,
                      weight: FontWeight.w700,
                      textColor: isSelected
                          ? usedAppColor.black
                          : usedAppColor.Color676C75,
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

  String? tabName = "Gym Visit";
  Column _buildSelectedTimeSlotSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Selected Time Slot",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            FancyContainer(
              backgroundColor: getFigmaColor("BABBBE"),
              radius: 20,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.question_mark_outlined,
                  size: 12,
                  color: usedAppColor.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Wrap(
          children: [8, 9, 10, 11, 12, 13, 14, 15].map(
            (e) {
              bool isSelected = selectedTimeSlot == e;
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: FancyContainer(
                  nulledAlign: true,
                  backgroundColor:
                      isSelected ? usedAppColor.black : usedAppColor.f3f3f4,
                  action: () {
                    setState(() {
                      selectedTimeSlot = e;
                    });
                  },
                  isContinousBorder: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: FancyText(
                      (e.toString().length == 1) ? "0$e:00" : "$e:00",
                      textColor: isSelected
                          ? usedAppColor.white
                          : usedAppColor.Color676C75,
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        )
      ],
    );
  }

  Widget _dayItemBuilder(DayItemProperties properties) {
    // properties.;
    double dimension = 20;
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
          // backgroundColor: usedAppColor.Color9EA0A5.withAlpha(40),
          height: dimension,
          width: dimension,

          child: FancyText(
            properties.date.day.toString(),
            textColor: !properties.isInMonth ? usedAppColor.D7D8D9 : null,
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
            height: dimension,
            width: dimension,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyText(
                  properties.date.day.toString(),
                  textColor: usedAppColor.white,
                ),
                FancyContainer(
                  height: 3,
                  width: 3,
                  backgroundColor: usedAppColor.white,
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
            height: dimension,
            width: dimension,
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
                  textColor: !properties.isInMonth ? usedAppColor.D7D8D9 : null,
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
                  height: dimension,
                  width: dimension,
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
                        textColor: usedAppColor.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: usedAppColor.white,
                      )
                    ],
                  ),
                ),
                FancyContainer(
                  backgroundColor: getFigmaColor("F97316"),
                  // Colors.grey.withAlpha(200),
                  height: dimension,
                  width: dimension,
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
                        textColor: usedAppColor.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: usedAppColor.white,
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
                        textColor: usedAppColor.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: usedAppColor.white,
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
                        textColor: usedAppColor.white,
                      ),
                      FancyContainer(
                        height: 3,
                        width: 3,
                        backgroundColor: usedAppColor.white,
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

  SingleChildScrollView _buildSlide1(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildItem(),
          _buildTopBar(context),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FancyText(
                "Physical Information",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FancyContainer(
                backgroundColor: getFigmaColor("BABBBE"),
                radius: 20,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.question_mark_outlined,
                    size: 12,
                    color: usedAppColor.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          _buildTextFieldSection(
            leftIcon: Icon(Icons.person_outline_rounded),
            hint: "Makise Kurisu",
            label: "Full Name",
            textEditingController: TextEditingController(),
          ),
          SizedBox(height: 10),
          _buildTextFieldSection(
            leftIcon: Icon(Icons.mail_outline_rounded),
            hint: "elementary221b@gmail.com",
            label: "Email",
            textEditingController: TextEditingController(),
          ),
          SizedBox(height: 10),
          _buildTextFieldSection(
            leftIcon: Icon(Icons.phone_iphone_rounded),
            hint: "+123 456 789",
            label: "Phone Number",
            textEditingController: TextEditingController(),
          ),
          SizedBox(height: 10),
          Divider(color: usedAppColor.D7D8D9),
          SizedBox(height: 10),
          _buildGenderSection(),
          SizedBox(height: 10),
          _buildHieghtSection(),
          SizedBox(height: 10),
          _buildWeightSection(),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: FancyText(
              "Date of Birth",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FancyContainer(
            height: 40,
            radius: 13,
            isContinousBorder: false,
            backgroundColor: usedAppColor.f3f3f4,
            action: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Center(child: DateTimeRangableSelector()),
                ),
              );
            },
            child: Row(
              children: [
                SizedBox(
                    height: 10,
                    width: 10,
                    child: Image.asset(
                      "assets/images/appIcon-Calendar.png",
                      color: usedAppColor.white,
                    )),
                Text("January 24, 2025"),
              ],
            ),
          ),
          SizedBox(height: 15),
          Divider(color: usedAppColor.D7D8D9),
          SizedBox(height: 15),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FancyText(
                "Additional Comment",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FancyContainer(
                backgroundColor: getFigmaColor("BABBBE"),
                radius: 20,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.question_mark_outlined,
                    size: 12,
                    color: usedAppColor.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: FancyText(
              "Comment",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 10),
          FancyContainer(
            height: 130,
            radius: 60,
            backgroundColor: usedAppColor.f3f3f4,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: 5 - 1,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Row(
                    children: [
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
          _buildBottomButton(),
        ],
      ),
    );
  }

  Padding _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        backgroundColor: usedAppColor.black,
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
                // textColor:usedAppColor.white,
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: usedAppColor.white,
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(width: 20, child: buildTailedAppArrow(isLeft: false)),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildHieghtSection() {
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
              "Cm",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: usedAppColor.Color676C75,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Container(
          // color: Colors.red,
          child: SfSlider(
            thumbIcon: FancyContainer(
              height: 30,
              width: 30,
              backgroundColor: usedAppColor.f97316,
              borderColor: usedAppColor.white,
              hasBorder: true,
              radius: 15,
              borderThickness: 3,
              // isContinousBorder: false,
              shadows: List.filled(
                  4,
                  BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 10,
                      color: Colors.black.withAlpha(20))),
            ),
            // labelPlacement: LabelPlacement.betweenTicks,
            showDividers: false,
            inactiveColor: usedAppColor.f3f3f4,
            min: 120,
            max: 180,
            value: wiehgt,
            interval: (180 - 120) / 2,
            // showTicks: true,
            showLabels: true,
            enableTooltip: true,
            // minorTicksPerInterval: 1,

            onChanged: (dynamic value) {
              setState(() {
                wiehgt = value;
              });
            },
          ),
        ),
      ],
    );
  }

  Column _buildWeightSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FancyText(
              "Weight",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            FancyText(
              "kg",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: usedAppColor.Color676C75,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Container(
          // color: Colors.red,
          child: SfSlider(
            thumbIcon: FancyContainer(
              height: 30,
              width: 30,
              backgroundColor: usedAppColor.f97316,
              borderColor: usedAppColor.white,
              hasBorder: true,
              radius: 15,
              borderThickness: 3,
              // isContinousBorder: false,
              shadows: List.filled(
                  4,
                  BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 10,
                      color: Colors.black.withAlpha(20))),
            ),
            // labelPlacement: LabelPlacement.betweenTicks,
            showDividers: false,
            inactiveColor: usedAppColor.f3f3f4,
            min: 120,
            max: 180,
            value: height,
            interval: (180 - 120) / 2,
            // showTicks: true,
            showLabels: true,
            enableTooltip: true,
            // minorTicksPerInterval: 1,

            onChanged: (dynamic value) {
              setState(() {
                height = value;
              });
            },
          ),
        ),
      ],
    );
  }

  double wiehgt = 150;
  double height = 150;

  double _upperValue = 50;
  List<Map> genderListAdvanced = [
    {"name": "Female", "image": "assets/images/genderIcon-female.png"},
    {"name": "Male", "image": "assets/images/genderIcon-male.png"},
    {"name": "Other", "image": "assets/images/genderIcon-ai.png"},
  ];
  int? selectedGenderIndex;
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
                color: usedAppColor.Color676C75,
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: genderListAdvanced.map((element) {
              int index = genderListAdvanced.indexOf(element);
              return (selectedGenderIndex == index)
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyContainer(
                        radius: 10,
                        action: () {
                          selectedGenderIndex = null;
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
                                  color: usedAppColor.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              FancyText(element["name"],
                                  // "Male",
                                  size: 12,
                                  textColor: usedAppColor.white),
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
                          selectedGenderIndex = index;
                          setState(() {});
                        },
                        isContinousBorder: false,
                        backgroundColor: usedAppColor.f3f3f4,
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
                                // textColor:usedAppColor.white,
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

  String? focusedTextField;
  Column _buildTextFieldSection(
      {required Widget leftIcon,
      required String hint,
      required String label,
      required TextEditingController textEditingController}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          label,
          // "Card Number",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Number textField"
          bool isSelected = focusedTextField == label;
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: usedAppColor.f3f3f4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: leftIcon,
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: textEditingController,
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = label;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
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

  FancyContainer _buildItem() {
    return FancyContainer(
      height: 85,
      radius: 40,
      nulledAlign: true,
      backgroundColor: usedAppColor.f3f3f4,
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
                        backgroundColor: usedAppColor.D7D8D9,
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
                        textColor: usedAppColor.Color676C75,
                      ),
                      const SizedBox(width: 5),
                      FancyContainer(
                        height: 5,
                        width: 5,

                        // isContinousBorder: false,
                        backgroundColor: usedAppColor.D7D8D9,
                      ),
                      const SizedBox(width: 5),
                      SizedBox(
                        height: 12,
                        child: Image.asset(
                            "assets/images/insightIcon-dumbell.png"),
                      ),
                      // Icon(
                      //   Icons.timer,
                      //   color: usedAppColor.Color9EA0A5,
                      //   size: 12,
                      // ),
                      const SizedBox(width: 5),
                      FancyText(
                        "Strength",
                        weight: FontWeight.w500,
                        size: 14,
                        textColor: usedAppColor.Color676C75,
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

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor:usedAppColor.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Book Coach",
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
                backgroundColor: usedAppColor.f3f3f4,
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

class CancelThisAppointmentPage extends StatefulWidget {
  const CancelThisAppointmentPage({super.key});

  @override
  State<CancelThisAppointmentPage> createState() =>
      _CancelThisAppointmentPageState();
}

class _CancelThisAppointmentPageState extends State<CancelThisAppointmentPage> {
  List<String> listOfReasonsToQuit = [
    "I found a better provider",
    "I’m concerned about the insurance",
    "The provider doesn’t accept insurance",
    "Provider asked to cancel",
    "There was an issue on my end",
    "Other",
  ];
  List<int> selectedreasons = [];
  @override
  Widget build(BuildContext context) {
    // Main Scaffold for the screen
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Main content column
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
                  "Cancel This Appointment",
                  style: GoogleFonts.workSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Cancelling fitness appointment too many times will result being banned!",
                  style: GoogleFonts.workSans(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                // Container displaying appointment details
                FancyContainer(
                  radius: 40,
                  // height: 217,
                  nulledAlign: true,
                  backgroundColor: usedAppColor.f3f3f4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // Inner column for appointment details
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
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
                                    )),
                                const SizedBox(height: 10),
                                _buildIconImage(),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        FancyContainer(
                          backgroundColor: usedAppColor.white,
                          radius: 6,
                          isContinousBorder: false,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: FancyText(
                                "Upper Body Full Circuit Session 1",
                                rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: usedAppColor.Color676C75)),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildIconImageDotRepeat()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Text asking for cancellation reason
                Text(
                  "Please select the cancellation reason?",
                  style: GoogleFonts.workSans(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // Row of selectable reasons for cancellation
                Column(
                  children: List.generate(
                    listOfReasonsToQuit.length,
                    (index) {
                      bool isSelected = selectedreasons.contains(index);
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          // Horizontal padding for each reason
                          horizontal: 4.0,
                          vertical: 2.0,
                        ),
                        child: FancyContainer(
                          radius: 10,
                          action: () {
                            if (isSelected) {
                              selectedreasons.remove(index);
                            } else {
                              // Add or remove the reason from the selected list
                              selectedreasons.add(index);
                            }
                            setState(() {});
                          },
                          isContinousBorder: false,
                          // backgroundColor: usedAppColor.f3f3f4,
                          // hasBorder: isSelected,
                          // Highlight selected reasons with a border
                          borderColor: getFigmaColor("2563EB"),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FancyContainer(
                                  height: 15,
                                  width: 15,
                                  radius: 4,
                                  isContinousBorder: false,
                                  backgroundColor: isSelected
                                      ? getFigmaColor("F97316", 12)
                                      : null,
                                  borderColor: isSelected
                                      ? getFigmaColor("F97316")
                                      : getFigmaColor("babbbe"),
                                  hasBorder: true,
                                  child: (isSelected)
                                      ? FancyContainer(
                                          height: 8,
                                          width: 8,
                                          radius: 3,

                                          isContinousBorder: false,
                                          backgroundColor:
                                              getFigmaColor("F97316"),
                                          // child: SizedBox(),
                                        )
                                      : null,
                                ),
                                SizedBox(width: 10),
                                // Spacer(),
                                FancyText(
                                  listOfReasonsToQuit[index],
                                  size: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                FancyContainer(
                  height: 140,
                  radius: 60,
                  backgroundColor: usedAppColor.f3f3f4,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines: 3 - 1,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Icon(
                              Icons.description,
                              color: getFigmaColor("babbbe"),
                            ),
                            SizedBox(width: 5),
                            FancyText(
                              "78/120",
                              textColor: getFigmaColor("6A6D72"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                          "Continue Cancellation",
                          textColor: usedAppColor.white,
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 20,
                          child: buildTailedAppArrow(isLeft: false),
                        ),

                        // const Icon(
                        //   Icons.check,
                        //   color:usedAppColor.white,
                        // )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                          "Keep Appointment",
                          textColor: getFigmaColor("EF4444"),
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
    );
  }

  // Widget for displaying an icon, text, and a separator dot
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
          textColor: usedAppColor.Color676C75,
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: usedAppColor.D7D8D9,
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
          textColor: usedAppColor.Color676C75,
        ),
      ],
    );
  }

  // Widget for displaying an icon and text
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
          textColor: usedAppColor.Color676C75,
        ),
      ],
    );
  }
}

class CoachingSchedulePage extends StatefulWidget {
  const CoachingSchedulePage({super.key});

  @override
  State<CoachingSchedulePage> createState() => _CoachingSchedulePageState();
}

class _CoachingSchedulePageState extends State<CoachingSchedulePage> {
  DateTime? _selectedDate;
  late List<RevealableTileController> revealableControllerList;

  int? currentlyOpenTileIndex = 0;
  @override
  void initState() {
    revealableControllerList = List.generate(
      4,
      (index) {
        return RevealableTileController(
          id: index.toString(),
          onOpen: () {
            currentlyOpenTileIndex = index;
            revealableControllerList.forEach(
              (element) {
                if (element.id != index.toString()) {
                  try {
                    element.slideAndSetIsOpenState(false);
                  } catch (e) {}
                }
              },
            );
            // setState(() {});
          },
          onClose: () {
            currentlyOpenTileIndex = null;
            // setState(() {});
          },
          onDragStart: () {
            revealableControllerList.forEach(
              (element) {
                if (element.id != index.toString()) {
                  try {
                    element.slideAndSetIsOpenState(false);
                  } catch (e) {}
                }
              },
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopBar(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildDateSection(),
                      Row(
                        children: [
                          FancyText(
                            "All Appointments",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          FancyText(
                            "Newest First",
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: usedAppColor.Color676C75),
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                              height: 11,
                              child: Image.asset(
                                  "assets/images/wifiLike_logo.png")),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .73,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 50,
                                child: Center(
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    alignment: WrapAlignment.center,
                                    lineLength: double.infinity,
                                    lineThickness: 1.0,
                                    dashLength: 4.0,
                                    dashColor: Colors.grey,
                                    // dashGradient: [Colors.red, Colors.blue],
                                    dashRadius: 0.0,
                                    dashGapLength: 4.0,
                                    dashGapColor: Colors.transparent,
                                    // dashGapGradient: [Colors.red, Colors.blue],
                                    dashGapRadius: 0.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              children:
                                  revealableControllerList.map((elelment) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: RevealableTile(
                                      child: _buildItemXTimeItem(),
                                      background: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          FancyContainer(
                                            backgroundColor: Colors.red,
                                            isContinousBorder: false,
                                            radius: 12,
                                            nulledAlign: true,
                                            action: () {
                                              elelment
                                                  .slideAndSetIsOpenState(false)
                                                  .then(
                                                (value) {
                                                  revealableControllerList
                                                      .remove(elelment);
                                                  if (mounted) setState(() {});
                                                },
                                              );

                                              // setState(() {});
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(Icons.delete,
                                                  color: usedAppColor.white),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          FancyContainer(
                                            backgroundColor:
                                                getFigmaColor("F97316"),
                                            nulledAlign: true,
                                            isContinousBorder: false,
                                            radius: 12,
                                            height: 40,
                                            action: () {
                                              elelment
                                                  .slideAndSetIsOpenState(false)
                                                  .then(
                                                    (value) {},
                                                  );

                                              // setState(() {});
                                            },
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                  "assets/images/appIcon-calendarFilled.png",
                                                  color: usedAppColor.white,
                                                )
                                                // Icon(Icons.delete,
                                                //     color:usedAppColor.white),
                                                ),
                                          ),
                                        ],
                                      ),
                                      revealableTileController: elelment
                                      //     RevealableTileController(
                                      //   id: Uuid().v4(),
                                      // ),
                                      ),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              // (
              //   initialDate: DateTime(2024, 3, 18),
              // )
              //             (
              //   focusedDate: _selectedDate,
              //   firstDate: DateTime(2024, 3, 18),
              //   lastDate: DateTime(2030, 3, 18),
              //   onDateChange: (date) {
              //     // Handle the selected date.
              //     _selectedDate=date;
              //     setState(() {

              //     });
              //   },
              // )
            ],
          ),
        ));
  }

  Row _buildItemXTimeItem() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10),
          child: FancyContainer(
            radius: 20,
            // height: 217,
            isContinousBorder: false,

            nulledAlign: true,
            backgroundColor: usedAppColor.f3f3f4,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.timer,
                    size: 15,
                  ),
                  SizedBox(height: 5),
                  FancyText("13:00",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      )
                      // textColor: usedAppColor.Color676C75,
                      ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: FittedBox(
            child: FancyContainer(
              radius: 40,
              // height: 217,
              nulledAlign: true,
              backgroundColor: usedAppColor.f3f3f4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
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
                                // textColor: usedAppColor.Color676C75,
                                ),
                            const SizedBox(height: 10),
                            _buildIconImage(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    FancyContainer(
                      backgroundColor: usedAppColor.white,
                      radius: 6,
                      isContinousBorder: false,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FancyText("Upper Body Full Circuit Session 1",
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: usedAppColor.Color676C75)
                            // textColor: usedAppColor.Color676C75,
                            ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildIconImageDotRepeat()
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

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
          textColor: usedAppColor.Color676C75,
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: usedAppColor.D7D8D9,
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
          textColor: usedAppColor.Color676C75,
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
          textColor: usedAppColor.Color676C75,
        ),
      ],
    );
  }

  SizedBox _buildDateSection() {
    return SizedBox(
      height: 100,
      child: easy_date_timeline.EasyDateTimeLine(
        initialDate: DateTime(2024, 3, 18),
        headerProps: easy_date_timeline.EasyHeaderProps(showHeader: false),
        dayProps: easy_date_timeline.EasyDayProps(height: 80),
        itemBuilder:
            (context, dayNumber, dayName, monthName, fullDate, isSelected) {
          Widget content = FancyContainer(
            height: 100,
            width: 60,
            radius: 20,
            isContinousBorder: false,
            backgroundColor: usedAppColor.f3f3f4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyText(
                  dayName,
                  size: 12,
                  weight: FontWeight.w600,
                  textColor: getFigmaColor("5D6A85"),
                ),
                FancyText(
                  dayNumber,
                  size: 20,
                  weight: FontWeight.w800,
                ),
                FancyContainer(
                  height: 6,
                  width: 6,
                  backgroundColor:
                      getFigmaColor(isSelected ? "F97316" : "babbbe"),
                ),
              ],
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(
                  child: content, radius: 20, spreadRadius: 3)
              : content;
        },
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor:usedAppColor.white,
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
            ],
          ),
        ),
      ),
    );
  }
}

class CoachHomePage extends StatefulWidget {
  const CoachHomePage({super.key});

  @override
  State<CoachHomePage> createState() => _CoachHomePageState();
}

class _CoachHomePageState extends State<CoachHomePage> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopBar(context),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FancyContainer(
                        radius: 15,
                        isContinousBorder: false,
                        backgroundColor: usedAppColor.f3f3f4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search fitness coach...",
                                    hintStyle:
                                        GoogleFonts.workSans(fontSize: 13),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              FancyContainer(
                                radius: 30,
                                height: 20,
                                width: 20,
                                isContinousBorder: false,
                                // hasBorder: true,
                                // borderColor: getFigmaColor("BABBBE"),
                                child: Image.asset(
                                    "assets/images/boxLikeSearchIcon.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildroboSection(),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FancyText(
                            "Browse Coaches",
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
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.filled(
                            4,
                            SizedBox(
                              height: 200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: AspectRatio(
                                  aspectRatio: 250 / 290,
                                  child: FancyContainer(
                                    backgroundColor: usedAppColor.f3f3f4,
                                    radius: 60,
                                    child: Stack(
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          child: SizedBox(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .2,
                                                ),
                                                Image.asset(
                                                    "assets/images/maleCommentatorImage-transparentBG.png",
                                                    height: 200,
                                                    width: 350,
                                                    // scale: 1.35,
                                                    fit: BoxFit.contain,
                                                    alignment: Alignment.topLeft
                                                    // Alignment(1, 0),
                                                    ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Align(
                                        //   alignment: Alignment(1, 1),
                                        //   child: SingleChildScrollView(
                                        //     physics: NeverScrollableScrollPhysics(),
                                        //     child: ,
                                        //   ),
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FancyContainer(
                                                // height: 25,
                                                // width: 30,
                                                nulledAlign: true,

                                                radius: 10,
                                                isContinousBorder: false,
                                                backgroundColor:
                                                    getFigmaColor("111214", 32),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: FancyText("Human",
                                                      textAlign:
                                                          TextAlign.center,
                                                      rawTextStyle:
                                                          GoogleFonts.workSans(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white)),
                                                ),
                                              ),
                                              Spacer(),
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    FancyText(
                                                      "Zuckman D. Wu",
                                                      textAlign:
                                                          TextAlign.center,
                                                      rawTextStyle:
                                                          GoogleFonts.workSans(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600,

                                                        // weight: FontWeight.bold,
                                                        //   size: 24,
                                                      ),
                                                    ),
                                                    _buildImageIconRepea2(),
                                                  ]),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
        ));
  }

  AspectRatio _buildroboSection() {
    return AspectRatio(
      aspectRatio: 340 / 248,
      child: FancyContainer(
        backgroundColor: usedAppColor.black,
        radius: 60,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(1, 1),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Image.asset(
                  "assets/images/roboDrago.png",
                  height: 200,
                  width: 200,
                  // scale: 1.35,
                  fit: BoxFit.contain,
                  alignment: Alignment(1, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _buildImageIconRepeat(),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FancyText(
                        "Coach Of The Day",
                        textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: usedAppColor.D7D8D9
                            // weight: FontWeight.bold,
                            //   size: 24,
                            ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FancyText("X-II-AE-12",
                              textAlign: TextAlign.center,
                              rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: usedAppColor.white)),
                          SizedBox(width: 10),
                          FancyContainer(
                            height: 25,
                            width: 30,
                            radius: 10,
                            isContinousBorder: false,
                            backgroundColor: getFigmaColor("ffffff", 32),
                            child: FancyText("AI",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: usedAppColor.white)),
                          ),
                          Spacer(),
                          FancyContainer(
                            height: 45,
                            width: 45,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: getFigmaColor("F97316"),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: pi * 3 / 4,
                                child: buildTailedAppArrow(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildImageIconRepeat() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
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
          textColor: usedAppColor.white,
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: getFigmaColor("393C43"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-person.png")),
        const SizedBox(width: 5),
        FancyText(
          "87 Clients",
          weight: FontWeight.w500,
          size: 14,
          textColor: usedAppColor.white,
        ),
      ],
    );
  }

  Row _buildImageIconRepea2() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-star.png")),
        const SizedBox(width: 5),
        FancyText(
          "2.8",
          weight: FontWeight.w500,
          size: 10,
          // textColor:usedAppColor.white,
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: getFigmaColor("babbbe"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-person.png")),
        const SizedBox(width: 5),
        FancyText(
          "87 Clients",
          weight: FontWeight.w500,
          size: 10,
          // textColor:usedAppColor.white,
        ),
      ],
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        // height: 50,
        backgroundColor: usedAppColor.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FancyContainer(
                radius: 30,
                height: 30,
                width: 30,
                isContinousBorder: false,
                hasBorder: true,
                borderColor: getFigmaColor("BABBBE"),
                child: Image.asset("assets/images/maleCommentatorImage.png"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FancyText(
                        "Ready for training 🏋️‍♀️",
                        textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: getFigmaColor("736B66")
                            // weight: FontWeight.bold,
                            //   size: 24,
                            ),
                      ),

                      SizedBox(
                        child: FancyText("Coach Spike Brown",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              // weight: FontWeight.bold,
                              //   size: 24,
                            )),
                      ),
                      // Row(
                      //   children: [
                      //     FancyText(
                      //       "Human Coach",
                      //       textAlign: TextAlign.center,
                      //       rawTextStyle: GoogleFonts.workSans(
                      //           fontSize: 10,
                      //           fontWeight: FontWeight.w400,
                      //           color: getFigmaColor("736B66")
                      //           // weight: FontWeight.bold,
                      //           //   size: 24,
                      //           ),
                      //     ),
                      //     const SizedBox(width: 5),
                      //     FancyContainer(
                      //       height: 5,
                      //       width: 5,
                      //       backgroundColor: usedAppColor.f3f3f4,
                      //     ),
                      //     const SizedBox(width: 5),
                      //     FancyText(
                      //       "Certified",
                      //       textAlign: TextAlign.center,
                      //       rawTextStyle: GoogleFonts.workSans(
                      //           fontSize: 10,
                      //           fontWeight: FontWeight.w400,
                      //           color: getFigmaColor("736B66")
                      //           // weight: FontWeight.bold,
                      //           //   size: 24,
                      //           ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              FancyContainer(
                height: 45,
                width: 45,
                radius: 20,
                borderColor: usedAppColor.f3f3f4,
                hasBorder: true,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.notifications_rounded,
                          weight: .2,
                          size: 30,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: FancyContainer(
                          height: 15,
                          width: 15,
                          radius: 5,
                          hasBorder: true,
                          borderColor: usedAppColor.white,
                          isContinousBorder: false,
                          borderThickness: 2,
                          backgroundColor: Colors.red,
                          child: FancyText(
                            "8",
                            size: 10,
                            textColor: usedAppColor.white,
                          ),
                        ),
                      )
                    ],
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
