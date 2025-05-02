import 'package:fitness_client_project/utils/utils.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoachChatPage extends StatefulWidget {
  CoachChatPage({super.key});

  @override
  State<CoachChatPage> createState() => _CoachChatPageState();
}

class _CoachChatPageState extends State<CoachChatPage> {
  // Hi there! Thanks for choosing me as your personal coach. Let's get started. Are you ready for your workout? 🙌
  List<Map> listOfMessages = [
    {
      "message":
          "Hi there! Thanks for choosing me as your personal coach. Let's get started. Are you ready for your workout? 🙌",
      "isMine": false
    },
    {
      "message":
          "Absolutely, I'm ready to go. What's the plan for today? Let me know.",
      "isMine": true
    },
    {
      "message":
          """Today, we'll focus on full-body strength training.\n\nWe'll start with warm-up exercises, then move on to bodyweight exercises to build your core strength.""",
      "isMine": false
    },
    {
      "message": "Amazing! 👌",
      "isMine": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.f3f3f4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FancyContainer(
            // height: 30,

            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            child: _buildTopBar(context),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: listOfMessages.map(
                (element) {
                  bool isMine = element["isMine"];
                  List<Widget> contents = [
                    FancyContainer(
                      height: 30,
                      width: 30,
                      radius: 10,
                      isContinousBorder: false,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: isMine
                            ? Icon(
                                Icons.person,
                                color: usedAppColor.Color9EA0A5,
                                size: 15,
                              )
                            : Image.asset(
                                "assets/images/Union_icon.png",
                                color: usedAppColor.f3f3f4,
                                height: 15,
                                width: 15,
                              ),
                      ),
                      backgroundColor: isMine
                          ? getFigmaColor("393C43")
                          : getFigmaColor("BABBBE"),
                    ),
                    SizedBox(width: 5),
                    FancyContainer(
                      nulledAlign: true,
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .68),
                      child: FancyText(
                        element["message"],
                        // "Human Coach",
                        // textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color:
                              isMine ? usedAppColor.white : usedAppColor.black,
                          // weight: FontWeight.bold,
                          //   size: 24,
                        ),
                      ),
                    )
                  ];

                  return Align(
                    alignment:
                        isMine ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FancyContainer(
                        constraints: BoxConstraints(minHeight: 40),
                        nulledAlign: true,
                        backgroundColor:
                            isMine ? usedAppColor.black : usedAppColor.D7D8D9,
                        isContinousBorder: false,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(17),
                          bottomLeft: Radius.circular(isMine ? 17 : 0),
                          topRight: Radius.circular(17),
                          bottomRight: Radius.circular(isMine ? 0 : 17),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: isMine
                                  ? contents.reversed.toList()
                                  : contents),
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          )),
          FancyContainer(
            // height: 30,
            backgroundColor: usedAppColor.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: FancyContainer(
                      // height: 40,
                      // width: 40,
                      radius: 15,
                      isContinousBorder: false,
                      backgroundColor: usedAppColor.f3f3f4,
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.0),
                          child: Row(
                            children: [
                              Icon(Icons.mic),
                              Expanded(
                                  child: TextField(
                                cursorColor: getFigmaColor("F97316"),
                                decoration: InputDecoration(
                                  hintText: "Type to start chatting...",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontSize: 10,
                                  ),
                                  contentPadding: EdgeInsets.all(8.0),
                                ),
                              )),
                              Icon(Icons.camera_alt_rounded,
                                  color: getFigmaColor("BABBBE")),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  FancyContainer(
                    height: 40,
                    width: 40,
                    radius: 15,
                    isContinousBorder: false,
                    backgroundColor: getFigmaColor("F97316"),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: buildTailedAppArrow(isLeft: false),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String? aFunction(int firstInput) {
    String? result = "sahdasdvuagsdja";

    result = "i am ${firstInput + 20} years old";

    return result;
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        // height: 50,
        backgroundColor: usedAppColor.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(
                    children: [
                      Center(
                        child: FancyText("Coach Spike Brown",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              // weight: FontWeight.bold,
                              //   size: 24,
                            )),
                      ),
                      Row(
                        children: [
                          FancyText(
                            "Human Coach",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: getFigmaColor("736B66")
                                // weight: FontWeight.bold,
                                //   size: 24,
                                ),
                          ),
                          SizedBox(width: 5),
                          FancyContainer(
                            height: 5,
                            width: 5,
                            backgroundColor: usedAppColor.f3f3f4,
                          ),
                          SizedBox(width: 5),
                          FancyText(
                            "Certified",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: getFigmaColor("736B66")
                                // weight: FontWeight.bold,
                                //   size: 24,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              FancyContainer(
                height: 30,
                width: 30,
                radius: 20,
                backgroundColor: usedAppColor.f3f3f4,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
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
    );
  }
}
