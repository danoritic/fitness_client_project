import 'package:fitness_client_project/features/aiCoachingSession/veiws/ai_coach_intro_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/coach_call_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/find_fitness_coach_page.dart';
import 'package:fitness_client_project/features/aiCoachingSession/veiws/heart_rate_page.dart';
import 'package:fitness_client_project/features/others/veiws/gallery_of_screens.dart';
import 'package:fitness_client_project/features/others/veiws/test_screen.dart';
import 'package:fitness_client_project/utils/app_variables.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(providers: [
    Provider(create: (_) => AppColors()),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool isDarkYeah = false;
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>().addListener(changeThemeMode);
    buildTailedAppArrow();
    return ScreenUtilInit(
      // designSize: const Size(375, 812),
      builder: (_, __) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.from(
            colorScheme: isDarkYeah
                ? ColorScheme.dark(
                    primary: usedAppColor.f97316,
                  )
                : ColorScheme.light(
                    primary: usedAppColor.f97316,
                  ),
          ),
          // ThemeData(
          //   colorScheme: ColorScheme.fromSeed(seedColor: usedAppColor.f97316),

          //   // useMaterial3: true,
          // ),
          home: CoachCallPage(),
          // const GalleryOfScreens(),
          themeMode: isDarkYeah ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }

  changeThemeMode() {
    isDarkYeah = !context.read<AppColors>().isDarkMode;
    setState(() {});
  }
}
