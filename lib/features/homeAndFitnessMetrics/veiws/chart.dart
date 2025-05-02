import 'package:flutter/material.dart';
import 'package:fitness_client_project/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Image.asset("assets/images/Home & Smart Fitness Metrics.png"),
      ),
    );
  }
}
