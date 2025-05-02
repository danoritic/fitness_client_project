import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatPage11And12 extends StatefulWidget {
  const AiCoachChatPage11And12({super.key});

  @override
  State<AiCoachChatPage11And12> createState() => _AiCoachChatPage11And12State();
}

class _AiCoachChatPage11And12State extends State<AiCoachChatPage11And12> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();
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
                "Then please specify your supplements right now.",
              ),
              const Spacer(),
              Column(
                children: [
                  FancyContainer(
                    height: 45,
                    radius: 15,
                    isContinousBorder: false,
                    backgroundColor: usedAppColor.f3f3f4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: textEditingController,
                              // textAlign: textEditingController.text.isNotEmpty
                              //     ? TextAlign.start
                              //     : TextAlign.end,
                              onChanged: (value) {
                                selectedItemIsVisible = false;
                                setState(() {});
                              },
                              decoration: const InputDecoration(
                                hintText: "Creatine 2XF",
                                // hintStyle: TextStyle(color: getFigmaColor("BABBBE")),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Transform.rotate(
                              angle: pi * 90 / 180,
                              child: const Icon(Icons.tune_rounded)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Visibility(
                    visible:
                        //  false,
                        selectedItemIsVisible,
                    replacement: FancyContainer(
                        // height: 45,
                        radius: 15,
                        isContinousBorder: false,
                        backgroundColor: usedAppColor.f3f3f4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: FancyContainer(
                            backgroundColor: usedAppColor.f3f3f4,
                            // height: 40,
                            // width: 150,
                            radius: 20,
                            isContinousBorder: false,
                            // nulledAlign: true,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                "Vitamin D",
                                "BCAA XP",
                                "Omega 2",
                                "Beta-alanine",
                              ]
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: FancyContainer(
                                        radius: 15,
                                        isContinousBorder: false,
                                        action: () {
                                          // selectedBodyPart = e;
                                          textEditingController.text = "";
                                          selectedItemIsVisible = true;
                                          setState(() {});
                                        },
                                        backgroundColor:
                                            // selectedBodyPart != e
                                            // ?
                                            usedAppColor.f3f3f4,
                                        // :usedAppColor.white,
                                        // height: 40,
                                        // nulledAlign: true,

                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(e),
                                            Icon(
                                              Icons.add,
                                              color: usedAppColor.Color9EA0A5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        )),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        FancyText("Active Supplements:"),
                        const SizedBox(height: 10),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: List.generate(
                            5,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: FancyContainer(
                                  // height: 45,
                                  radius: 15,
                                  isContinousBorder: false,
                                  nulledAlign: true,
                                  backgroundColor: usedAppColor.f3f3f4,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 3.0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FancyText(
                                          (index % 2 != 0)
                                              ? "Creatine"
                                              : "Beta-alanine",
                                          weight: FontWeight.bold,
                                        ),
                                        Icon(
                                          Icons.close,
                                          color: usedAppColor.Color9EA0A5,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
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
