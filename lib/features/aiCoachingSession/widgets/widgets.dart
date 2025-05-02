import 'package:fitness_client_project/features/aiCoachingSession/models/models.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StagePacketWidget extends StatefulWidget {
  final SessionHistoryItemPackModel sessionHistoryItemPackModel;
  const StagePacketWidget(
      {super.key, required this.sessionHistoryItemPackModel});

  @override
  State<StagePacketWidget> createState() => _StagePacketWidgetState();
}

class _StagePacketWidgetState extends State<StagePacketWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.sessionHistoryItemPackModel.listOfSessionHistoryItemModel.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: StageWidget(
              sessionHistoryItemPackModel: widget.sessionHistoryItemPackModel,
            ),
          );
        },
      ),
    );
    ;
  }
}

class StageWidget extends StatefulWidget {
  final SessionHistoryItemPackModel sessionHistoryItemPackModel;
  const StageWidget({super.key, required this.sessionHistoryItemPackModel});

  @override
  State<StageWidget> createState() => _StageWidgetState();
}

class _StageWidgetState extends State<StageWidget> {
  bool isChildVisible = true;
  @override
  Widget build(BuildContext context) {
    return _buildStage();
  }

  Column _buildStage() {
    return Column(
      children: [
        FancyContainer(
          action: () {
            setState(() {
              isChildVisible = !isChildVisible;
            });
          },

          // height: 40,
          child: Row(
            children: [
              FancyContainer(
                height: 20,
                width: 20,
                radius: 15,
                backgroundColor: getFigmaColor("F97316"),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Row(
                  children: [
                    FancyText(
                      "May 28, 2027",
                      rawTextStyle: GoogleFonts.workSans(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    FancyText(
                      "7 Total",
                      rawTextStyle: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: usedAppColor.Color676C75),
                    ),
                    // const SizedBox(width: 5),
                    // SizedBox(
                    //   height: 15,
                    //   child: Image.asset("assets/images/wifiLike_logo.png"),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // if (isChildVisible)
        AnimatedCrossFade(
          duration: .2.seconds,
          crossFadeState: isChildVisible
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          secondChild: SizedBox(),
          firstChild: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 350),
                  child:
                      // SizedBox()

                      LayoutBuilder(
                    builder: (context, constraints) {
                      return FancyContainer(
                          height: constraints.maxHeight,
                          width: 5,
                          child: Stack(
                            children: [
                              FancyContainer(
                                height: double.infinity,
                                width: double.infinity,
                                backgroundColor: usedAppColor.D7D8D9,
                              ),
                              FancyContainer(
                                height: .5 * constraints.maxHeight,
                                width: double.infinity,
                                backgroundColor: getFigmaColor("F97316"),
                              ),
                            ],
                          ));
                    },
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: List.generate(
                    widget.sessionHistoryItemPackModel
                        .listOfSessionHistoryItemModel.length,
                    (index) {
                      SessionHistoryItemModel sessionHistoryItemModel = widget
                          .sessionHistoryItemPackModel
                          .listOfSessionHistoryItemModel[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyContainer(
                          radius: 30,
                          backgroundColor: usedAppColor.f3f3f4,
                          // width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //
                                    FancyText(
                                      sessionHistoryItemModel.title ?? "",
                                      // "Leg Workouts",
                                      rawTextStyle: GoogleFonts.workSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          color: usedAppColor.Color676C75,
                                          size: 15,
                                        ),
                                        const SizedBox(width: 5),
                                        FancyText(
                                          () {
                                            print(DateTime.parse(
                                                sessionHistoryItemModel
                                                    .dateTime!));
                                            return formatDateTimeToTimeWitAM(
                                              DateTime.parse(
                                                  sessionHistoryItemModel
                                                      .dateTime!),
                                            );
                                            // return "";
                                          }.call(),
                                          weight: FontWeight.w500,
                                          size: 14,
                                          textColor: usedAppColor.Color676C75,
                                        ),
                                        const SizedBox(width: 5),
                                        FancyContainer(
                                          height: 5,
                                          width: 5,

                                          // isContinousBorder: false,
                                          backgroundColor: usedAppColor.D7D8D9,
                                        ),
                                        const SizedBox(width: 5),
                                        SizedBox(
                                          height: 12,
                                          child: Image.asset(
                                              "assets/images/wierdPrecentageIcon.png"),
                                        ),
                                        // Icon(
                                        //   Icons.timer,
                                        //   color: getFigmaColor("9EA0A5"),
                                        //   size: 12,
                                        // ),
                                        const SizedBox(width: 5),
                                        FancyText(
                                          "Strength",
                                          weight: FontWeight.w500,
                                          size: 14,
                                          textColor: usedAppColor.Color676C75,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                  child: Image.asset(
                                      "assets/images/aiChatSessionHistoryIcon-bone.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        )

        // Expanded(
        //   child:

        // )

        // RotatedBox(
        //   // angle: pi * 90 / 180,
        //   quarterTurns: 3,
        //   child: LinearProgressIndicator(
        //     value: .5,
        //   ),
        // ),

        // Row(
        //   children: [

        //   ],
        // )
      ],
    );
  }
}
