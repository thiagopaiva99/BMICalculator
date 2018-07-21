import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();

  String _formattedText = "";
  String _bmiStatus = "";

  void handleRaisedButtonPressed() {
    setState(() {
      double bmiResult = calculateBMI(_weightController.text, _heightController.text);

      _formattedText = "Your BMI: ${bmiResult.toStringAsFixed(1)}";
      _bmiStatus = getBmiStatus(bmiResult);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "BMI Calculator"
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(5.0),
          children: <Widget>[
            new Image.asset(
              "assets/images/bmilogo.png",
              width: 120.0,
              height: 120.0
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.topCenter,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "Height in feet",
                      hintText: "Your height in numbers",
                      icon: new Icon(
                        Icons.assessment
                      )
                    ),
                  ),
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "Weight in Kg",
                      hintText: "Your weight in Kg",
                      icon: new Icon(
                        Icons.line_weight
                      )
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  new RaisedButton(
                    color: Colors.pinkAccent,
                    textColor: Colors.white,
                    onPressed: handleRaisedButtonPressed,
                    child: new Text("Calculate"),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  new Text(
                    "$_formattedText",
                    style: new TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0
                    ),
                  ),
                  new Text(
                    "$_bmiStatus"
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }

  double calculateBMI(String weight, String height) {
    if (
      double.parse(weight).toString().isNotEmpty && double.parse(weight) > 0 &&
      double.parse(height).toString().isNotEmpty && double.parse(height) > 0
    ) {
      return double.parse(weight) / (double.parse(height) * double.parse(height));
    }

    return 0.0;
  }

  String getBmiStatus(double bmiResult) {
    String result = "";

    if (bmiResult < 15) {
      result = "Extremely underweight";
    }

    if (bmiResult >= 15 && bmiResult < 16) {
      result = "Severely underweight";
    }

    if (bmiResult >= 16 && bmiResult < 18.5) {
      result = "Below the ideal weight";
    }

    if (bmiResult >= 18.5 && bmiResult < 25) {
      result = "Ideal weight range";
    }

    if (bmiResult >= 25 && bmiResult < 30) {
      result = "Overweight";
    }

    if (bmiResult >= 30 && bmiResult < 35) {
      result = "Obesity grade 1";
    }

    if (bmiResult >= 35 && bmiResult < 40) {
      result = "Obesity grade 2";
    }

    if (bmiResult >= 40) {
      result = "Obesity grade 3";
    }

    return result;
  }
}