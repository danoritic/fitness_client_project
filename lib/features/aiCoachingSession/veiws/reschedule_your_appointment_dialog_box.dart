import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RescheduleYourAppointmentDialogBox extends StatefulWidget {
  const RescheduleYourAppointmentDialogBox({super.key});

  @override
  State<RescheduleYourAppointmentDialogBox> createState() =>
      _RescheduleYourAppointmentDialogBoxState();
}

class _RescheduleYourAppointmentDialogBoxState
    extends State<RescheduleYourAppointmentDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: FancyContainer(
                        height: 380,
                        radius: 50,
                        backgroundColor: usedAppColor.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                height: 170,
                                hasBorder: true,
                                borderColor: getFigmaColor("BABBBE"),
                                child: Image.asset(
                                    "assets/images/3dImage-calendar.png"),
                              ),
                              Center(
                                child: FancyText("Reschedule your appointment?",
                                    textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 18,

                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              const SizedBox(height: 5),
                              FancyText(
                                "Are you sure to reschedule your fitness appointment with your coach?",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  // weight: FontWeight.bold,
                                  //   size: 24,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: Colors.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Yes, reschedule",
                                        textColor: usedAppColor.white,
                                      ),
                                      const SizedBox(width: 10),
                                      SizedBox.square(
                                        dimension: 15,
                                        child: Image.asset(
                                          "assets/images/appIcon-Calendar.png",
                                          color: usedAppColor.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FancyContainer(
                    backgroundColor: getFigmaColor("F3F3F4"),
                    width: 40,
                    height: 40,
                    radius: 20,
                    child: const Icon(Icons.close),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
