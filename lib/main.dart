import 'package:fitness_client_project/features/Sandow/veiws/sandow_score_detail.dart';
import 'package:fitness_client_project/features/Sandow/veiws/sandow_score_history.dart';
import 'package:fitness_client_project/features/homepage/veiws/homepage.dart';
import 'package:fitness_client_project/features/homepage/veiws/sandow_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, __) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
            ),
            home: const SandowScoreDetail(),
          );
        });
  }
}
