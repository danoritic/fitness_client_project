import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoachCallPage extends StatefulWidget {
  const CoachCallPage({super.key});

  @override
  State<CoachCallPage> createState() => _CoachCallPageState();
}

class _CoachCallPageState extends State<CoachCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: usedAppColor.Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Center(
              child: FancyText("Psst.. Before your coaching session...",
                  textAlign: TextAlign.center,
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    // weight: FontWeight.bold,
                    //   size: 24,
                  )),
            ),
            FancyText(
              "Please ensure the following:",
              textAlign: TextAlign.center,
              rawTextStyle: GoogleFonts.workSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: getFigmaColor("736B66")
                  // weight: FontWeight.bold,
                  //   size: 24,
                  ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/callPageImage-large.png",
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FancyContainer(
                height: MediaQuery.of(context).size.height * .4,
                gradient: LinearGradient(
                  colors: [
                    usedAppColor.Colors.white,
                    usedAppColor.Colors.white.withAlpha(200),
                    usedAppColor.Colors.white.withAlpha(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FancyContainer(
                        height: 110,
                        width: 85,
                        radius: 40,
                        backgroundColor: usedAppColor.Colors.white,
                        shadows: List.filled(
                          4,
                          BoxShadow(
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                            color: Colors.black.withAlpha(10),
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/callPageImage-small.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FancyContainer(
                            height: 50,
                            width: 50,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: usedAppColor.Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.volume_up_rounded,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: FancyContainer(
                            height: 70,
                            width: 70,
                            radius: 22,
                            isContinousBorder: false,
                            backgroundColor: getFigmaColor("F97316"),
                            hasBorder: true,
                            borderColor:
                                // Colors.green.withAlpha(200),
                                getFigmaColor("F97316", 50),
                            borderThickness: 3,
                            // shadows: List.filled(
                            //   4,
                            //   BoxShadow(
                            //     offset: const Offset(5, 5),
                            //     blurRadius: 10,
                            //     color: Colors.black.withAlpha(10),
                            //   ),
                            // ),

                            child: const Center(
                              child: Icon(
                                Icons.call_rounded,
                                weight: 1,
                                color: usedAppColor.Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: FancyContainer(
                            height: 50,
                            width: 50,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: usedAppColor.Colors.white,
                            shadows: List.filled(
                              4,
                              BoxShadow(
                                offset: const Offset(5, 5),
                                blurRadius: 10,
                                color: Colors.black.withAlpha(10),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.chat,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            // Center(child: Image.asset("assets/images/scanImage.png")
            //     //  Icon(
            //     //   Icons.document_scanner_rounded,
            //     //   color:usedAppColor.Colors.white,
            //     //   size: 220,
            //     // ),
            //     )
          ],
        ),
      ),
    );
  }
}
