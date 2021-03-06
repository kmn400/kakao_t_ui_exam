import 'package:flutter/material.dart';
import 'package:kakao_t_ui_exam/ui/bmi_calc/bmi_calc_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiCalcHomeScreen(),
    );
  }
}
