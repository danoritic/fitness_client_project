import 'package:fitness_client_project/features/aiCoachingSession/models/models.dart';
import 'package:fitness_client_project/features/aiCoachingSession/widgets/widgets.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionHistoryPage extends StatefulWidget {
  SessionHistoryPage({super.key});

  @override
  State<SessionHistoryPage> createState() => _SessionHistoryPageState();
}

class _SessionHistoryPageState extends State<SessionHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.white,
      appBar: AppBar(
        leading: buildBackArrow(context),
        backgroundColor: usedAppColor.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              FancyText(
                "Session Completed",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              FancyText(
                "Thank you for taking the time to do personalized fitness suggestion with our AI!",
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  FancyText(
                    "24 Session Total",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  FancyText(
                    "This Month",
                    rawTextStyle: GoogleFonts.workSans(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: getFigmaColor("676C75")),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                      height: 15,
                      child: Image.asset("assets/images/wifiLike_logo.png")),
                ],
              ),
              SizedBox(height: 20),
              StagePacketWidget(
                sessionHistoryItemPackModel: defaultSessionHistoryItemPackModel,
              )
            ],
          ),
        ),
      ),
    );
  }
}
