import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: usedAppColor.Colors.white,
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
                            backgroundColor: usedAppColor.Colors.white,
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
                              // textColor:usedAppColor.Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: usedAppColor.Colors.white,
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
