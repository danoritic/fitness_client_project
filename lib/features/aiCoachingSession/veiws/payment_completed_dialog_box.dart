import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCompletedDialogBox extends StatefulWidget {
  PaymentCompletedDialogBox({super.key});

  @override
  State<PaymentCompletedDialogBox> createState() =>
      _PaymentCompletedDialogBoxState();
}

class _PaymentCompletedDialogBoxState extends State<PaymentCompletedDialogBox> {
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
                      padding: EdgeInsets.all(8.0),
                      child: FancyContainer(
                        height: 350,
                        radius: 50,
                        backgroundColor: usedAppColor.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyContainer(
                                radius: 40,
                                child: Image.asset(
                                    "assets/images/paymentCompleteImage.png"),
                              ),
                              Center(
                                child: FancyText("Payment Completed!",
                                    rawTextStyle: GoogleFonts.workSans(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      // weight: FontWeight.bold,
                                      //   size: 24,
                                      //   textAlign: TextAlign.center,
                                    )),
                              ),
                              FancyText(
                                "You have successfully completed fitness coach booking. We’ve sent receipt to your email. Thank you!",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  // weight: FontWeight.bold,
                                  //   size: 24,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
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
                                        "Complete",
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
                              )
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
                    backgroundColor: getFigmaColor("F3F3F4"),
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
