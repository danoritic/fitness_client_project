import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/sandow_score.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),

      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/home_section_one.png",
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FancyText(
                        "Fitness Metrics",
                        weight: FontWeight.bold,
                        textColor: Colors.black,
                      ),
                      FancyText(
                        "See All",
                        weight: FontWeight.bold,
                        // F97316
                        textColor: getFigmaColor("F97316"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 190,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(SandowScore());
                              },
                              child: Image.asset(
                                "assets/images/sectionTwoImage_${index + 1}.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    "assets/images/section3_workoutFrame.png",
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      _buildHeaderRow(),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 235,
                          child: Row(
                            children: List.generate(
                              3,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/section_4.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildHeaderRow(),
                      SizedBox(height: 10),
                      Image.asset(
                        "assets/images/section5.png",
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(height: 10),
                      _buildHeaderRow(),
                      SizedBox(height: 10),
                      Image.asset(
                        "assets/images/section6.png",
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(height: 10),
                      _buildHeaderRow(),
                      SingleChildScrollView(
                        // scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          // height: 235,
                          child: Column(
                            children: List.generate(
                              3,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/section6Image_1.png",
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 90)
                    ],
                  ),
                ],
              ),
            )
                //  Image.asset(
                //   "assets/images/Home & Smart Fitness Metrics.png",
                //   alignment: Alignment.topCenter,
                // width: double.infinity,
                // fit: BoxFit.fitWidth,
                // ),
                ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Image.asset(
            //     "assets/images/Tab Bar.png",
            //     fit: BoxFit.fitWidth,
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Row _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FancyText(
          "Fitness Metrics",
          weight: FontWeight.bold,
          textColor: Colors.black,
        ),
        FancyText(
          "See All",
          weight: FontWeight.bold,
          // F97316
          textColor: getFigmaColor("F97316"),
        ),
      ],
    );
  }
}
