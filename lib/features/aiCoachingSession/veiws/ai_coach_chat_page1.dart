import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatPage1 extends StatefulWidget {
  const AiCoachChatPage1({super.key});

  @override
  State<AiCoachChatPage1> createState() => _AiCoachChatPage1State();
}

class _AiCoachChatPage1State extends State<AiCoachChatPage1> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.white,
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
                              color: usedAppColor.f3f3f4,
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: usedAppColor.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: usedAppColor.f3f3f4,
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
                                  "Yes, Start",
                                  // size: 16,
                                  // textColor:usedAppColor.white,
                                  rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: usedAppColor.white,
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
                                // textColor:usedAppColor.white,
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
