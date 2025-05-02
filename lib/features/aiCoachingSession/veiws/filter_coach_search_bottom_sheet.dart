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

class FilterCoachSearchBottomSheet extends StatefulWidget {
  FilterCoachSearchBottomSheet({super.key});

  @override
  State<FilterCoachSearchBottomSheet> createState() =>
      _FilterCoachSearchBottomSheetState();
}

class _FilterCoachSearchBottomSheetState
    extends State<FilterCoachSearchBottomSheet> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(child: _buildCascadedBottomsheet(context)),
    );
  }

  // List<String> genderList = ["Male", "Female", "AI/ML"];
  List<Map> genderListAdvanced = [
    {"name": "Female", "image": "assets/images/genderIcon-female.png"},
    {"name": "Male", "image": "assets/images/genderIcon-male.png"},
    {"name": "AI/ML", "image": "assets/images/genderIcon-ai.png"},
  ];

  List<Map> expertiseAreaList = [
    {"name": "Cardio & Conditioning", "icon": Icons.directions_run},
  ];

  int? selectedExpertiseArea = 0;

  List<Map> sortByList = [
    {"name": "Popularity (Highest First)", "icon": Icons.bar_chart_rounded},
  ];

  int? selectedSortBy = 0;

// SortBy
  Column _buildCascadedBottomsheet(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FancyContainer(
          height: MediaQuery.of(context).size.height * .85,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: usedAppColor.white.withAlpha(50),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: usedAppColor.white.withAlpha(200),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: FancyContainer(
                  isContinousBorder: false,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: usedAppColor.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Center(
                            child: FancyContainer(
                              width: 50,
                              height: 5,
                              backgroundColor: usedAppColor.D7D8D9,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyText(
                                "Filter Coach Search",
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FancyContainer(
                                backgroundColor: usedAppColor.D7D8D9,
                                radius: 20,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.question_mark_outlined,
                                    size: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          _buildAgeRangeSection(),
                          SizedBox(height: 10),
                          _buildGenderSection(),
                          SizedBox(height: 10),
                          _buildExpertiseAreaSection(),
                          SizedBox(height: 10),
                          _buildSortBySection(),
                          SizedBox(height: 10),
                          _buildBottomButton(),
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

  Padding _buildBottomButton() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FancyContainer(
        radius: 15,
        width: 300,
        height: 50,
        action: () {},
        isContinousBorder: false,
        backgroundColor: getFigmaColor("F97316"),
        //  usedAppColor.f3f3f4,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyText(
                "Apply Filter (32)",
                textColor: usedAppColor.white,
              ),
              SizedBox(width: 10),
              Transform.rotate(
                angle: pi / 2,
                child: Icon(
                  Icons.tune_rounded,
                  color: usedAppColor.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildSortBySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Sort By",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        FancyContainer(
          height: 40,
          radius: 30,
          backgroundColor: usedAppColor.f3f3f4,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              value: selectedExpertiseArea,
              onChanged: (value) {
                selectedExpertiseArea = value;
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
              items: sortByList.map(
                (element) {
                  int index = sortByList.indexOf(element);
                  return DropdownMenuItem<int>(
                      value: index,
                      child: Row(
                        children: [
                          SizedBox.square(
                              dimension: 15,
                              child: Icon(
                                element["icon"],
                                size: 15,
                              )
                              //  Image.asset(
                              //   ,
                              //   color:usedAppColor.white,
                              // ),
                              ),
                          FancyText(
                            element["name"],
                            size: 12,
                            // textColor:usedAppColor.white,
                          ),
                        ],
                      ));
                },
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildExpertiseAreaSection() {
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
          height: 40,
          radius: 30,
          backgroundColor: usedAppColor.f3f3f4,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                  value: selectedExpertiseArea,
                  onChanged: (value) {
                    selectedExpertiseArea = value;
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
                  items: expertiseAreaList.map(
                    (element) {
                      int index = expertiseAreaList.indexOf(element);
                      return DropdownMenuItem<int>(
                          value: index,
                          child: Row(
                            children: [
                              SizedBox.square(
                                  dimension: 15,
                                  child: Icon(
                                    element["icon"],
                                    size: 15,
                                  )
                                  //  Image.asset(
                                  //   ,
                                  //   color:usedAppColor.white,
                                  // ),
                                  ),
                              FancyText(
                                element["name"],
                                size: 12,
                                // textColor:usedAppColor.white,
                              ),
                            ],
                          ));
                    },
                  ).toList())),
        ),
      ],
    );
  }

  Column _buildAgeRangeSection() {
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
              "cm",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: usedAppColor.Color676C75,
              ),
            ),
          ],
        ),
        RangeSliderWidget(
          functionToUpdateValues: (p0, p1) {},
        ),
      ],
    );
  }

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
              return (selectedIndex == index)
                  ? Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FancyContainer(
                        radius: 10,
                        action: () {
                          selectedIndex = null;
                          setState(() {});
                        },
                        isContinousBorder: false,
                        backgroundColor: getFigmaColor("2563EB"),
                        hasBorder: true,
                        borderColor: getFigmaColor("CAD9F9"),
                        // withAlpha(100),
                        borderThickness: 4,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox.square(
                                dimension: 12,
                                child: Image.asset(
                                  element["image"],
                                  color: usedAppColor.white,
                                ),
                              ),
                              SizedBox(width: 10),
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
                      padding: EdgeInsets.all(4.0),
                      child: FancyContainer(
                        radius: 10,
                        action: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        isContinousBorder: false,
                        backgroundColor: usedAppColor.f3f3f4,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox.square(
                                dimension: 12,
                                child: Image.asset(
                                  element["image"],
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10),
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

  int? selectedIndex = 2;
}
