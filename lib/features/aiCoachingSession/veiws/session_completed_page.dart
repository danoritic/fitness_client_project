import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionCompletedPage extends StatefulWidget {
  const SessionCompletedPage({super.key});

  @override
  State<SessionCompletedPage> createState() => _SessionCompletedPageState();
}

class _SessionCompletedPageState extends State<SessionCompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // color: Colors.red,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyContainer(
                  backgroundColor: getFigmaColor("FFEDD5"),
                  nulledAlign: true,
                  isContinousBorder: false,
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Icon(
                      Icons.check_rounded,
                      color: getFigmaColor("F97316"),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                FancyText(
                  "Session Completed",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                FancyText(
                  "Thank you for taking the time to do personalized fitness suggestion with our AI!",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
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
                            "Great, Thanks!",
                            // size: 16,
                            // textColor: Colors.white,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const SizedBox(
                              width: 20,
                              child: Icon(Icons.check_rounded,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FancyContainer(
                    backgroundColor: getFigmaColor("F3F3F4"),
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
                            "Repeat Session",
                            // size: 16,
                            // textColor: Colors.white,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              // color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const SizedBox(
                            width: 20,
                            child: Icon(
                              Icons.repeat_rounded,
                              // color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FancyText(
                  "See Session History",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: getFigmaColor("F97316"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
