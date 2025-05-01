import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/customs/rating_widget.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  String tabName = "Recent";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: usedAppColor.Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopBar(context),
                RatingWidget(ratingDetails: {
                  1: 1,
                  2: 2,
                  3: 3,
                  4: 4,
                  5: 5,
                }),
                SizedBox(height: 10),
                _buildRecentPositiveNegativeSelector(),
                SizedBox(height: 10),
                Column(
                  children: List.filled(3, _buildCommentSlab()),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildCommentSlab() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: FancyContainer(
        // height: 300,
        // width: double.infinity,

        radius: 30,
        backgroundColor: getFigmaColor("f3f3f4"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  FancyContainer(
                    height: 48,
                    width: 48,
                    radius: 30,
                    child:
                        Image.asset("assets/images/maleCommentatorImage.png"),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      FancyText("Casca Smith",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )
                          // textColor: getFigmaColor("676C75"),
                          ),
                      SizedBox(height: 10),
                      _buildIconImageDotRepeat(),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                      ),
                      onPressed: () {})
                ],
              ),
              SizedBox(height: 10),
              FancyText(
                "Farnese has a deep understanding of various workout techniques and tailored each session to match my goals and abilities. Their enthusiasm and positivity are contagious, making every workout session both challenging and enjoyable.",
                maxLine: 3,
                weight: FontWeight.w500,
                size: 14,
                textColor: getFigmaColor("676C75"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buildIconImageDotRepeat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        FancyText(
          "2d ago",
          weight: FontWeight.w500,
          size: 14,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }

  FancyContainer _buildRecentPositiveNegativeSelector() {
    return FancyContainer(
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
            "Recent",
            "Positive",
            "Negative",
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
                      isSelected ? usedAppColor.Colors.white : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FancyText(
                      e,
                      weight: FontWeight.w700,
                      textColor:
                          isSelected ? Colors.black : getFigmaColor("676C75"),
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

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: usedAppColor.Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Reviews",
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
