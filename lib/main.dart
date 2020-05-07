import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'CoreQuiz.dart';

var obj = new CoreQuiz();

void main() {
  runApp(
    Phoenix(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.black26,
          body: covid(),
        )),
      ),
    ),
  );
}

class covid extends StatefulWidget {
  @override
  _covidState createState() => _covidState();
}

class _covidState extends State<covid> {
  List<Icon> score = [Icon(Icons.check)];
  int counter = 0;

  _onAlertButtonsPressed(context) {
    Alert(
      style: AlertStyle(
        backgroundColor: Colors.black26,
        titleStyle: TextStyle(color: Colors.amber),
        descStyle: TextStyle(color: Colors.lightGreen),
      ),
      context: context,
      type: AlertType.success,
      title: "Thank You",
      desc: "Stay Home, Stay Safe.",
      buttons: [
        DialogButton(
          child: Text(
            "Play Again",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Phoenix.rebirth(context);
          },
          //Phoenix.rebirth(context);
          width: 120,
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: SizedBox(
                height: 400,
                width: 200,
                child: Center(
                  child: Text(
                    obj.ab[counter].question,
                    style: TextStyle(color: Colors.amber, fontSize: 25.0),
                  ),
                )),
          ),
          Container(
            height: 75,
            margin: EdgeInsets.all(25.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: Colors.lightGreen,
              onPressed: () {
                setState(() {
                  if (obj.ab[counter].answer == true &&
                      counter < obj.ab.length - 1) {
                    print('True');
                    score.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else if (obj.ab[counter].answer == false &&
                      counter < obj.ab.length - 1) {
                    score.add(
                      Icon(Icons.close, color: Colors.red),
                    );
                  } else {
                    _onAlertButtonsPressed(context);
                  }
                  if (counter < obj.ab.length - 1) {
                    counter++;
                  }
                });
              },
              child: Text(
                "TRUE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
//
          Container(
            height: 75,
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  if (obj.ab[counter].answer == false &&
                      counter < obj.ab.length - 1) {
                    print('false');
                    score.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else if (obj.ab[counter].answer == true &&
                      counter < obj.ab.length - 1) {
                    score.add(
                      Icon(Icons.close, color: Colors.red),
                    );
                  } else {
                    _onAlertButtonsPressed(context);
                  }
                  if (counter < obj.ab.length - 1) {
                    counter++;
                  }
                });
              },
              child: Text(
                "FALSE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: score,
            ),
          )
        ],
      ),
    );
  }
}
