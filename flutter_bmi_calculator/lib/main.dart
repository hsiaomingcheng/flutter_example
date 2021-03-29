import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //最基礎的，直接使用既有的theme
      // theme: ThemeData.light(),

      //客制特定屬性顏色
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0A0E21),
      //   accentColor: Colors.teal,
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   textTheme: TextTheme(
      //       bodyText2: TextStyle(
      //     color: Colors.white,
      //   )),
      // ),

      //先使用dark theme，然後再針對其中的某些屬性客制你要的顏色
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
