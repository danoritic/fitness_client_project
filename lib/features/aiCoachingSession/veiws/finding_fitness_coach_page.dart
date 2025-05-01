import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FindingFitnessCoachPage extends StatefulWidget {
  const FindingFitnessCoachPage({super.key});

  @override
  State<FindingFitnessCoachPage> createState() =>
      _FindingFitnessCoachPageState();
}

class _FindingFitnessCoachPageState extends State<FindingFitnessCoachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/basketBall.png",
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FancyContainer(
              height: MediaQuery.of(context).size.height * .5,
              gradient: LinearGradient(
                colors: [
                  Colors.black.withAlpha(100),
                  Colors.black.withAlpha(0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/Union_icon.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(height: 20),
                    FancyText(
                      "Finding Fitness Coach...",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: usedAppColor.Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    LinearProgressIndicator(
                      value: .5,
                      borderRadius: BorderRadius.circular(20),
                      color: usedAppColor.Colors.white,
                      backgroundColor: getFigmaColor("f3f3f4", 32),
                    ),
                    SizedBox(height: 20),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
