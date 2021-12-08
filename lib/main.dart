import 'package:flutter/material.dart';
import 'palette.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Palette.customColor,
        ).copyWith(
          secondary: Colors.redAccent,
        ),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}

// ColorScheme Implementation in new version
// theme: ThemeData(
//     colorScheme: ColorScheme.fromSwatch(
//       primarySwatch: Colors.blue,
//     ).copyWith(
//       secondary: Colors.green,
//     ),

