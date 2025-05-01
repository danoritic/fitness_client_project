import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatPage14ImageSelectionMenu extends StatefulWidget {
  const AiCoachChatPage14ImageSelectionMenu({super.key});

  @override
  State<AiCoachChatPage14ImageSelectionMenu> createState() =>
      _AiCoachChatPage14ImageSelectionMenuState();
}

class _AiCoachChatPage14ImageSelectionMenuState
    extends State<AiCoachChatPage14ImageSelectionMenu> {
  String? tabName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _buildTopBar(context),
                FancyContainer(
                  height: 45,
                  // width: 30,
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
                        "Audio",
                        "Images",
                        "Videos",
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
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: FancyText(
                        "All Images",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 15.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FancyText(
                        "Newest First",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 14.w,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/sortIcon.png",
                      height: 15,
                      width: 15,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.filled(
                      3,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyContainer(
                          hasBorder: true,
                          radius: 40,
                          child: Image.asset(
                              "assets/images/strongRunningHuman.png"),
                        ),
                      ),
                    ),
                    childAspectRatio: 1,
                  ),
                ),
                const SizedBox(height: 30),
                FancyContainer(
                  backgroundColor: Colors.black,
                  // height: 50,
                  // width: 50,
                  nulledAlign: true,
                  radius: 40,
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: usedAppColor.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: usedAppColor.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Browse Photo",
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
                backgroundColor: Colors.grey[300],
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
