import 'package:fitness_client_project/features/others/veiws/test_screen.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';

import 'package:flutter/material.dart';

class GalleryOfScreens extends StatefulWidget {
  const GalleryOfScreens({super.key});

  @override
  State<GalleryOfScreens> createState() => _GalleryOfScreensState();
}

class _GalleryOfScreensState extends State<GalleryOfScreens> {
  List<Widget> listOfScreens = [
    // const HomePage(),
    // const SandowScore(),
    // const SandowScoreHistory(),
    // const SandowScoreDetail(),
    // const HydrationDialog(),
    // const DrinkWaterScreen(),
    // Scaffold(
    //   backgroundColor: Colors.grey,
    //   body: const CascadedBottomSheet(),
    // ),
    // Scaffold(
    //   backgroundColor: Colors.grey,
    //   body: const DateTimeRangableSelector(),
    // ),
    // const HydrationPage(),
    // const HaydrationFull(),
    // new
    const HydrationHistoryPage(),
    const AiSuggesstionPage(),
    const HeartRatePage(),
    const AiCoachIntroPage(),
    const AiCoachChatPage1(),
    const AiCoachChatPage2(),
    const AiCoachChatPage4(),
    const AiCoachChatPage5(),
    const AiCoachChatPage6(),
    const AiCoachChatPage7(),
    const AiCoachChatPage8And9(),
    const AiCoachChatPage10(),
    const AiCoachChatPage11And12(),
    const AiCoachChatPage13And16(),
    const AiCoachChatPage14ImageSelectionMenu(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          FancyContainer(
            height: double.infinity,
            width: double.infinity,
            child: listOfScreens[currentIndex],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              // alignment: Alignment.bottomCenter,

              child: FancyContainer(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: FancyContainer(
                        // backgroundColor: Colors.red,
                        action: () {
                          if (currentIndex > 0) {
                            currentIndex--;
                          } else {}
                          setState(() {});
                        },
                        // child: FancyContainer(
                        //   backgroundColor: Colors.black,
                        //   // height: 50,
                        //   // width: 50,
                        //   nulledAlign: true,
                        //   radius: 40,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(9.0),
                        //     child: Icon(
                        //       Icons.arrow_back,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                    Expanded(
                      child: FancyContainer(
                        // backgroundColor: Colors.red,
                        action: () {
                          if (currentIndex < listOfScreens.length - 1) {
                            currentIndex++;
                          } else {}
                          setState(() {});
                        },
                        // child: FancyContainer(
                        //   backgroundColor: Colors.black,
                        //   // height: 50,
                        //   // width: 50,
                        //   nulledAlign: true,
                        //   radius: 40,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(9.0),
                        //     child: Icon(
                        //       Icons.arrow_forward,
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        // ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
