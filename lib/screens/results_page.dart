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
      if (resultTexts.toLowerCase() == "normal") {
        return Color(0xff24d876);
      } else if (resultTexts.toLowerCase() == "underweight") {
        return Colors.orange[300];
      } else {
        return Colors.red[800];
      }
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
