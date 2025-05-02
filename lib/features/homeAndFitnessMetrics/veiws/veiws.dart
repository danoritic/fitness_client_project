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

class HydrationHistoryPage extends StatefulWidget {
  const HydrationHistoryPage({super.key});

  @override
  State<HydrationHistoryPage> createState() => _HydrationHistoryPageState();
}

class _HydrationHistoryPageState extends State<HydrationHistoryPage> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.white,
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
                          color: usedAppColor.Color676C75),
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
                          color: usedAppColor.Color676C75),
                    ),
                  ],
                ),
                Column(
                  children: List.filled(
                      10,
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: FancyContainer(
                          backgroundColor: usedAppColor.f3f3f4,
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
                                    color: usedAppColor.Color676C75,
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
    context.watch<AppColors>();
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
                        backgroundColor: usedAppColor.white,
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
                                  backgroundColor: usedAppColor.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Yes, Hydrate",
                                        textColor: usedAppColor.white,
                                      ),
                                      const SizedBox(width: 10),
                                      Icon(
                                        Icons.check,
                                        color: usedAppColor.white,
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
                  backgroundColor: usedAppColor.f3f3f4,
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
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.white,
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
                        backgroundColor: usedAppColor.f3f3f4,
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
                                  Expanded(
                                    child: SizedBox(
                                      height: 100,
                                      child:
                                          Image.asset(listOfImageUrls[index]),
                                    ),
                                  ),
                                  FancyText(
                                    "Glass of Water",
                                    // weight: FontWeight.bold,
                                    // size: 30,
                                    // textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 13,
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
                                      color: usedAppColor.Color676C75,
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
                        activeColor: usedAppColor.black,
                        color: usedAppColor.f3f3f4,
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
                backgroundColor: usedAppColor.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FancyText(
                      "Add Drink",
                      textColor: usedAppColor.white,
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.add,
                      color: usedAppColor.white,
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
    context.watch<AppColors>();
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
                  backgroundColor: usedAppColor.white.withAlpha(50),
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
                  backgroundColor: usedAppColor.white.withAlpha(200),
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
                  backgroundColor: usedAppColor.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          FancyContainer(
                            width: 50,
                            height: 5,
                            backgroundColor: usedAppColor.D7D8D9,
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
                                backgroundColor: usedAppColor.D7D8D9,
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
                                      backgroundColor: usedAppColor.f3f3f4,
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
                                      backgroundColor: usedAppColor.f3f3f4,
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
                                                Icon(
                                                  Icons.water_drop_sharp,
                                                  color: usedAppColor.white,
                                                ),
                                                SizedBox(width: 10),
                                                FancyText("Calorie",
                                                    textColor:
                                                        usedAppColor.white),
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
                                          backgroundColor: usedAppColor.f3f3f4,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.water_drop_sharp,
                                                  // color:usedAppColor.white,
                                                ),
                                                const SizedBox(width: 10),
                                                FancyText(
                                                  "Calorie",
                                                  // textColor:usedAppColor.white,
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
                              backgroundColor: usedAppColor.black,
                              //  usedAppColor.f3f3f4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FancyText(
                                      "Filter Sandow Score (25)",
                                      textColor: usedAppColor.white,
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(
                                      Icons.tune_rounded,
                                      color: usedAppColor.white,
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
                  backgroundColor: usedAppColor.white,
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
                                        backgroundColor: usedAppColor.black,
                                        action: () {
                                          onPress?.call();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: FancyText(
                                            "select",
                                            textColor: usedAppColor.white,
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
                                        backgroundColor: usedAppColor.f3f3f4,
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
                                          backgroundColor: usedAppColor.f3f3f4,
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
                                      backgroundColor: usedAppColor.f3f3f4,
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
              backgroundColor: usedAppColor.f3f3f4,
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
}

class HydrationPage extends StatefulWidget {
  const HydrationPage({super.key});

  @override
  State<HydrationPage> createState() => _HydrationPageState();
}

class _HydrationPageState extends State<HydrationPage> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        backgroundColor: usedAppColor.white,
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
                            color: usedAppColor.Color676C75,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    FancyText(
                      "You need 1500ml for today.",
                      textColor: usedAppColor.Color676C75,
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: usedAppColor.Color676C75,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: FancyContainer(
                        height: 300,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(50)),
                        width: double.infinity,
                        backgroundColor: usedAppColor.f3f3f4,
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
                                          child: Icon(
                                            Icons.question_mark,
                                            color: Colors.black,
                                          ),
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
                                            color: Colors.black,
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
                                            color: Colors.black,
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
      backgroundColor: usedAppColor.white,
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
