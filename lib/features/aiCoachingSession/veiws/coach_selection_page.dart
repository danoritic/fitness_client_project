import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: usedAppColor.white,
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
                  usedAppColor.white,
                  usedAppColor.white,
                  usedAppColor.white.withAlpha(0),
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
                                    isSelected ? usedAppColor.white : null,
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
                      color: usedAppColor.white,
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
