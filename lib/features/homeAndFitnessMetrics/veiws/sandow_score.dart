import 'dart:math';

import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SandowScore extends StatelessWidget {
  const SandowScore({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      backgroundColor: usedAppColor.white,
      body: Center(
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SandowScoreDialog(),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/images/sandowScore.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: FancyContainer(
                    height: 50,
                    backgroundColor: usedAppColor.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                          //   // backgroundColor: usedAppColor.f3f3f4,
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(8.0),
                          //     child: ,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FancyText(
                              "Sandow Score",
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
                            backgroundColor: usedAppColor.f3f3f4,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SandowScoreDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      backgroundColor: Colors.transparent,
      elevation: 16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          FancyContainer(
            backgroundColor: usedAppColor.white,
            radius: 60,
            isContinousBorder: true,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: 340,
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '?',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      'What is Sandow Score?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Sandow score is a comprehensive fitness score provided by AI. It summarizes overall health status based on your data. 🎂',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 24),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: usedAppColor.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Great, thanks',
                                style: TextStyle(
                                  color: usedAppColor.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.check,
                                color: usedAppColor.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: FancyContainer(
              action: () {
                // Get.back();
                Navigator.of(context).pop();
              },
              width: 48,
              height: 48,
              radius: 40,
              // decoration: ShapeDecoration(
              //   shape: ContinuousRectangleBorder(
              //     borderRadius: BorderRadius.circular(40),
              //   ),

              // ),
              backgroundColor: usedAppColor.Color9EA0A5,
              // decoration: BoxDecoration(
              //   color: Colors.grey[200],
              //   shape: BoxShape.circle,
              // ),
              child: Center(
                child: Icon(Icons.close),
                //  Text(
                //   '?',
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
