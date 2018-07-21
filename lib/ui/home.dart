import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {

  String _formattedText = "";

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
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "Age",
                        hintText: "Your age in numbers",
                        icon: new Icon(
                            Icons.person_outline
                        )
                    ),
                  ),
                  new TextField(
                    controller: null,
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
                    controller: null,
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
                    onPressed: () {},
                    child: new Text("Botão"),
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
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}