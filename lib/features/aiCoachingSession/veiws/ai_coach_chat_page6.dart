import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatPage6 extends StatefulWidget {
  const AiCoachChatPage6({super.key});

  @override
  State<AiCoachChatPage6> createState() => _AiCoachChatPage6State();
}

class _AiCoachChatPage6State extends State<AiCoachChatPage6> {
  String? menuValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                "What’s your current weight in kilograms? Please answer truthfully.",
              ),
              const Spacer(),
              Align(
                  alignment: Alignment.centerRight,
                  child: FancyText("My current weight is")),
              Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      "1",
                      "2",
                      "8",
                    ]
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FancyContainer(
                              // isContinousBorder: false,
                              radius: 150,
                              backgroundColor: getFigmaColor("F3F3F4"),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 17, vertical: 8.0),
                                child: FancyText(
                                  e,
                                  size: 48,
                                  weight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )),
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
                            backgroundColor: Colors.white,
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
                              // textColor: Colors.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
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
}
