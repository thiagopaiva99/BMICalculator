import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
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