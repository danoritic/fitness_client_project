import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class AiCoachChatPage4 extends StatefulWidget {
  const AiCoachChatPage4({super.key});

  @override
  State<AiCoachChatPage4> createState() => _AiCoachChatPage4State();
}

class _AiCoachChatPage4State extends State<AiCoachChatPage4> {
  String? menuValue;
  String? selectedBodyPart;
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
                "How many days per week do you plan to workout?",
              ),
              const Spacer(),
              Align(
                  alignment: Alignment.centerRight,
                  child: FancyText("Select your workout frequency.")),
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
                  FancyContainer(
                    backgroundColor: usedAppColor.f3f3f4,
                    // height: 40,
                    width: 150,
                    radius: 20,
                    isContinousBorder: false,
                    // nulledAlign: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        "1",
                        "2",
                        "3",
                        "4",
                        "5",
                        "6",
                      ]
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: FancyContainer(
                                radius: 15,
                                isContinousBorder: false,
                                action: () {
                                  selectedBodyPart = e;
                                  setState(() {});
                                },
                                backgroundColor: selectedBodyPart != e
                                    ? usedAppColor.f3f3f4
                                    : usedAppColor.white,
                                // height: 40,
                                // nulledAlign: true,

                                height: 40,
                                child: Text(e),
                              ),
                            ),
                          )
                          .toList(),
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
