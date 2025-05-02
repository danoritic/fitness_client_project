import 'package:fitness_client_project/utils/utils.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelPersonalCoachAppointmentDialogBox extends StatefulWidget {
  CancelPersonalCoachAppointmentDialogBox({super.key});

  @override
  State<CancelPersonalCoachAppointmentDialogBox> createState() =>
      _CancelPersonalCoachAppointmentDialogBoxState();
}

class _CancelPersonalCoachAppointmentDialogBoxState
    extends State<CancelPersonalCoachAppointmentDialogBox> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: FancyContainer(
                        height: 420,
                        radius: 50,
                        backgroundColor: usedAppColor.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                height: 170,
                                hasBorder: true,
                                borderColor: getFigmaColor("BABBBE"),
                                child: Image.asset(
                                    "assets/images/3dImage-cancel.png"),
                              ),
                              Center(
                                child: FancyText(
                                    "Cancel Personal Coach Appointment?",
                                    textAlign: TextAlign.center,
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 18,

                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              SizedBox(height: 5),
                              FancyText(
                                "There will be no refundable fee! Are you absolutely sure? 😡",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  // weight: FontWeight.bold,
                                  //   size: 24,
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: getFigmaColor("EF4444", 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "No, Don’t Cancel",
                                        textColor: getFigmaColor("EF4444"),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.close,
                                        color: getFigmaColor("EF4444"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: FancyContainer(
                                  height: 45,
                                  isContinousBorder: false,
                                  radius: 14,
                                  width: double.infinity,
                                  backgroundColor: getFigmaColor("EF4444"),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FancyText(
                                        "Yes, Cancel",
                                        textColor: usedAppColor.white,
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.check,
                                        color: usedAppColor.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: FancyContainer(
                    backgroundColor: usedAppColor.f3f3f4,
                    width: 40,
                    height: 40,
                    radius: 20,
                    child: Icon(Icons.close),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
