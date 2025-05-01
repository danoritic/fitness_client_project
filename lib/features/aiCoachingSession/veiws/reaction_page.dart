import 'dart:math';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:card_swiper/card_swiper.dart' as card_swiper;

class ReactionPage extends StatefulWidget {
  const ReactionPage({super.key});

  @override
  State<ReactionPage> createState() => _ReactionPageState();
}

class _ReactionPageState extends State<ReactionPage> {
  List<Map> reactionsList = [
    {
      "message": "It was a superb experience.",
      "image": "assets/images/RateingPageImage-smiler.png",
      "color": getFigmaColor("F97316")
    },
    {
      "message": "It was a great experience.",
      "image": "assets/images/RateingPageImage-smile.png",
      "color": getFigmaColor("84CC16")
    },
    {
      "message": "It was an OK experience.",
      "image": "assets/images/RateingPageImage-straightface.png",
      "color": getFigmaColor("81858D")
    },
    {
      "message": "It was a bad experience.",
      "image": "assets/images/RateingPageImage-sad.png",
      "color": getFigmaColor("EF4444")
    },
    {
      "message": "It was an worst experience.",
      "image": "assets/images/RateingPageImage-dissapointed.png",
      "color": getFigmaColor("A855F7")
    },
    // {
    //   "message": "asssas",
    //   "image": "assets/images/RateingPageImage-marker.png",
    //   "color": getFigmaColor("value")
    // },
  ];
  int focussedReaction = 2;
  @override
  Widget build(BuildContext context) {
    Map detailsOfReaction = reactionsList[focussedReaction];
    return Scaffold(
        backgroundColor: detailsOfReaction['color'],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FancyText(
                "How was your experience?",
                textAlign: TextAlign.center,
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox.square(
              dimension: 20,
              child: Image.asset("assets/images/RateingPageImage-marker.png"),
            ),
            FancyContainer(
                height: MediaQuery.of(context).size.height * 0.2,
                // backgroundColor: Colors.yellow,
                child: card_swiper.Swiper(
                    itemCount: reactionsList.length,
                    scale: .1,
                    viewportFraction: .3,
                    loop: false,
                    onIndexChanged: (index) {
                      setState(() {
                        focussedReaction = index;
                      });
                    },
                    itemWidth: 100,
                    index: focussedReaction,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FancyContainer(
                            // hasBorder: true,
                            // backgroundColor: Colors.green,
                            child: SizedBox.square(
                              dimension: 50,
                              child: Image.asset(
                                reactionsList[index]['image'],
                                color: (index == focussedReaction)
                                    ? Colors.white
                                    : Colors.white.withAlpha(100),
                              ),
                            ),
                          ));
                    })),
            SizedBox.square(
              dimension: 20,
              child: Transform.rotate(
                  angle: pi,
                  child:
                      Image.asset("assets/images/RateingPageImage-marker.png")),
            ),
            const SizedBox(height: 30),
            FancyText(
              "${reactionsList[focussedReaction]['message']}",
              textColor: Colors.white,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FancyContainer(
                height: 45,
                isContinousBorder: false,
                radius: 14,
                width: double.infinity,
                backgroundColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FancyText(
                      "Yes, reschedule",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
          ],
        ));
  }
}
