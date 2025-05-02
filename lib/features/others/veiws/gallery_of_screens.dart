import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_last_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page1.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page10.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page11_and12.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page13_and16.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page14.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page15.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page17.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page18.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page2.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page4.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page5.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page6.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page7.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_chat_page8_and9.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_intro_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_suggesstion_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/cancel_personal_coach_appointment_dialog_box.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/checkout_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_call_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_chat_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_review_dialog_box.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_review_page_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_selection_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_talk_session_ended_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coaching_session_instruction_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/filter_coach_search_bottom_sheet.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/find_fitness_coach_by_text_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/find_fitness_coach_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/finding_fitness_coach_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/heart_rate_history_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/heart_rate_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/payment_completed_dialog_box.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/reaction_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/reschedule_your_appointment_dialog_box.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/reviews_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/select_payment_methods_bottom_sheet.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/session_completed_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/session_history_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/upcoming_coach_fitness_training_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/views.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/haydration_full.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/homepage.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/sandow_score.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/sandow_score_detail.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/sandow_score_history.dart';
import 'package:fitness_client_project/features/homeAndFitnessMetrics/veiws/veiws.dart';
import 'package:fitness_client_project/features/others/veiws/test_screen.dart';
import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Scaffold(
//   backgroundColor: Colors.grey,
//   body: CascadedBottomSheet(),
// ),
//Scaffold(
//   backgroundColor: Colors.grey,
//   body: DateTimeRangableSelector(),
// ),
class GalleryOfScreens extends StatefulWidget {
  const GalleryOfScreens({super.key});

  @override
  State<GalleryOfScreens> createState() => _GalleryOfScreensState();
}

class _GalleryOfScreensState extends State<GalleryOfScreens> {
  List<Widget Function()> listOfScreens = [
    () => HomePage(),
    () => SandowScore(),
    () => SandowScoreHistory(),
    () => SandowScoreDetail(),
    () => HydrationDialog(),
    () => DrinkWaterScreen(),

    () => HydrationPage(),
    () => HaydrationFull(),
    // new
    () => HydrationHistoryPage(),
    () => AiSuggesstionPage(),

    () => AiCoachIntroPage(),
    () => AiCoachChatPage1(),
    () => AiCoachChatPage2(),
    () => AiCoachChatPage4(),
    () => AiCoachChatPage5(),
    () => AiCoachChatPage6(),
    () => AiCoachChatPage7(),
    () => AiCoachChatPage8And9(),
    () => AiCoachChatPage10(),
    () => AiCoachChatPage11And12(),
    () => AiCoachChatPage13And16(),
    () => AiCoachChatPage14ImageSelectionMenu(),
    () => AiCoachChatPage15ImageScan(),
    () => AiCoachChatPage17(),
    () => AiCoachChatPage18(),
    () => HeartRatePage(),
    () => HeartRateHistoryPage(),
    () => FindFitnessCoachByTextPage(),
    () => FindFitnessCoachPage(),
    () => FindingFitnessCoachPage(),
    () => CoachHomePage(),
    () => CoachingSchedulePage(),
    () => CoachCallPage(),
    () => CoachChatPage(),
    () => CoachReviewDialogBox(),
    () => CoachReviewPagePage(),
    () => CoachSelectionPage(),
    () => CoachTalkSessionEndedPage(),
    () => CoachingSessionInstructionPage(),
    () => AiCoachChatLastPage(),
    () => CancelThisAppointmentPage(),
    () => CancelPersonalCoachAppointmentDialogBox(),
    () => CheckoutPage(),
    () => FilterCoachSearchBottomSheet(),
    () => FilterCoachSearchBottomSheet(),
    () => PaymentCompletedDialogBox(),
    () => ReactionPage(),
    () => RescheduleYourAppointmentDialogBox(),
    () => ReviewsPage(),
    () => SelectPaymentMethodsBottomSheet(),
    () => SessionCompletedPage(),
    () => SessionHistoryPage(),
    () => UpcomingCoachFitnessTrainingPage(),
  ];

  int currentIndex = 0;
  // git revert c568fb6
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Navigator(
            // pages: listOfScreens.map(
            //   (e) {
            //     return MaterialPage(child: e());
            //   },
            // ).toList(),
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => Scaffold(),
              );
            },
            key: rootNavigatorKey,
            // child: FancyContainer(
            //   height: double.infinity,
            //   width: double.infinity,
            //   child: listOfScreens[currentIndex],
            // ),
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
                          Navigator.of(rootNavigatorKey.currentContext!)
                              .push(MaterialPageRoute(
                            builder: (context) => listOfScreens[currentIndex](),
                          ));
                          setState(() {});
                        },
                        // child: FancyContainer(
                        //   backgroundColor: usedAppColor.black,
                        //   // height: 50,
                        //   // width: 50,
                        //   nulledAlign: true,
                        //   radius: 40,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(9.0),
                        //     child: Icon(
                        //       Icons.arrow_back,
                        //       color:usedAppColor.white,
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                    FancyContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FancyText(
                          isDark ? "lighten" : "darken",
                          textColor:
                              !isDark ? usedAppColor.white : usedAppColor.black,
                        ),
                      ),
                      action: () {
                        isDark = !isDark;
                        // usedAppColor.darken();
                        changeAppThemeMode(isDark, context);
                        // usedAppColor = context.read<AppColors>().trigger();
                        // usedAppColor.trigger();
                        setState(() {});
                      },
                      backgroundColor:
                          isDark ? usedAppColor.white : usedAppColor.black,
                    ),
                    Expanded(
                      child: FancyContainer(
                        // backgroundColor: Colors.red,
                        action: () {
                          if (currentIndex < listOfScreens.length - 1) {
                            currentIndex++;
                          } else {}
                          Navigator.of(rootNavigatorKey.currentContext!)
                              .push(MaterialPageRoute(
                            builder: (context) => listOfScreens[currentIndex](),
                          ));
                          setState(() {});
                        },
                        // child: FancyContainer(
                        //   backgroundColor: usedAppColor.black,
                        //   // height: 50,
                        //   // width: 50,
                        //   nulledAlign: true,
                        //   radius: 40,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(9.0),
                        //     child: Icon(
                        //       Icons.arrow_forward,
                        //       color:usedAppColor.white,
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
