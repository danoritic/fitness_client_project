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

import 'package:flutter/material.dart';

class GalleryOfScreens extends StatefulWidget {
  const GalleryOfScreens({super.key});

  @override
  State<GalleryOfScreens> createState() => _GalleryOfScreensState();
}

class _GalleryOfScreensState extends State<GalleryOfScreens> {
  List<Widget> listOfScreens = [
    const HomePage(),
    const SandowScore(),
    const SandowScoreHistory(),
    const SandowScoreDetail(),
    const HydrationDialog(),
    const DrinkWaterScreen(),
    Scaffold(
      backgroundColor: Colors.grey,
      body: const CascadedBottomSheet(),
    ),
    Scaffold(
      backgroundColor: Colors.grey,
      body: const DateTimeRangableSelector(),
    ),
    const HydrationPage(),
    const HaydrationFull(),
    // new
    const HydrationHistoryPage(),
    const AiSuggesstionPage(),

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
    const AiCoachChatPage15ImageScan(),
    const AiCoachChatPage17(),
    const AiCoachChatPage18(),
    const HeartRatePage(),
    const HeartRateHistoryPage(),
    const FindFitnessCoachByTextPage(),
    const FindFitnessCoachPage(),
    const FindingFitnessCoachPage(),
    const CoachHomePage(),
    const CoachingSchedulePage(),
    const CoachCallPage(),
    const CoachChatPage(),
    const CoachReviewDialogBox(),
    const CoachReviewPagePage(),
    const CoachSelectionPage(),
    const CoachTalkSessionEndedPage(),
    const CoachingSessionInstructionPage(),
    const AiCoachChatLastPage(),
    const CancelThisAppointmentPage(),
    const CancelPersonalCoachAppointmentDialogBox(),
    const CheckoutPage(),
    const FilterCoachSearchBottomSheet(),
    const FilterCoachSearchBottomSheet(),
    const PaymentCompletedDialogBox(),
    const ReactionPage(),
    const RescheduleYourAppointmentDialogBox(),
    const ReviewsPage(),
    const SelectPaymentMethodsBottomSheet(),
    const SessionCompletedPage(),
    const SessionHistoryPage(),
    const UpcomingCoachFitnessTrainingPage(),
  ];

  int currentIndex = 0;
  // git revert c568fb6
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
                        //       color:usedAppColor.Colors.white,
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
                          textColor: !isDark
                              ? usedAppColor.Colors.white
                              : Colors.black,
                        ),
                      ),
                      action: () {
                        isDark = !isDark;
                        changeAppThemeMode(isDark);
                        setState(() {});
                      },
                      backgroundColor:
                          isDark ? usedAppColor.Colors.white : Colors.black,
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
                        //       color:usedAppColor.Colors.white,
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
