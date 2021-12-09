import './screens/results_page.dart';
import 'package:flutter/material.dart';
import './components/palette.dart';
import './screens/input_page.dart';

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
      routes: {
        '/results': (context) => ResultsPage(),
      },
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

