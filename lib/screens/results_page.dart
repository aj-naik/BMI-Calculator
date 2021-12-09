import '../components/resuableCard.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context).settings.arguments as Map;

    String bmiResults = arg['bmiResult'];
    String resultTexts = arg['resultText'];
    String interpretations = arg['interpretation'];

    Color resultColor() {
      String res = resultTexts;
      Color col;
      switch (res) {
        case "Very Serverly Obese":
          col = Colors.red[900];
          break;
        case "Severely Obese":
          col = Colors.red[700];
          break;
        case "Obese":
          col = Colors.red[400];
          break;
        case "Overweight":
          col = Colors.orange[300];
          break;
        case "Normal":
          col = Color(0xFF24D876);
          break;
        case "Underweight":
          col = Colors.orange[300];
          break;
        case "Severely Underweight":
          col = Colors.red[400];
          break;
        case "Very Severely Underweight":
          col = Colors.red[700];
          break;
      }
      return col;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultTexts.toUpperCase(),
                    style: TextStyle(
                      color: resultColor(),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResults,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI Range:',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '18.5 - 25 kg / m\u00B2',
                        style: TextStyle(
                            color: cardTextColor,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    interpretations,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            buttonTitle: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
