import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/customs/line_chart.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeartRateHistoryPage extends StatefulWidget {
  HeartRateHistoryPage({super.key});

  @override
  State<HeartRateHistoryPage> createState() => _HeartRateHistoryPageState();
}

class _HeartRateHistoryPageState extends State<HeartRateHistoryPage> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopBar(context),
                Row(
                  children: [
                    FancyText(
                      "251 Total",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    FancyText(
                      "Newest First",
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: usedAppColor.Color676C75),
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                        height: 15,
                        child: Image.asset("assets/images/wifiLike_logo.png")),
                  ],
                ),
                SizedBox(height: 5),
                ...List.filled(4, _buildHeartRateHistoryCard())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeartRateHistoryCard() {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: FancyContainer(
        radius: 30,
        backgroundColor: usedAppColor.f3f3f4,
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: [
              LineChartForHeartRateHistory(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: FancyText(
                            "82.5",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FancyText(
                            "bpm",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: usedAppColor.Color676C75,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      height: 30,
                      child: buildAppArrow(isLeft: false),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FancyText(
                      "Jan 12, 2028",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: usedAppColor.Color676C75,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: FancyContainer(
                        backgroundColor: usedAppColor.D7D8D9,
                        width: 5,
                        height: 5,
                      ),
                    ),
                    FancyText(
                      "Light Jogging",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 14,
                        // fontWeight: FontWeight.bold,
                        color: usedAppColor.Color676C75,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 38.0),
      child: FancyContainer(
        height: 50,
        backgroundColor: usedAppColor.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              // FancyContainer(
              //   // height: 30,
              //   // width: 30,
              //   radius: 20,
              //   action: () {
              //     print("sassasasas");
              //   },
              //   // backgroundColor: Colors.grey[300],
              //   child: Padding(
              //     padding:EdgeInsets.all(8.0),
              //     child: ,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FancyText(
                  "Heart Rate History",
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
                child: Padding(
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
