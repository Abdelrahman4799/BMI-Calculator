import 'package:flutter/material.dart';
import 'package:flutter_application_1/Result.dart';
import 'BMI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          Bmicalc(),
      //     reslt_screen(
      //   bmiresult: "20",
      //   result: "Normal",
      //   message:
      //      "You have a higher than normal body weight.\n it is recommended that you lose weight",
      // ),
    );
  }
}
