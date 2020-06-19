import 'package:bmi_calculator/Result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom.dart';
import 'package:flutter/material.dart';
import 'package:holding_gesture/holding_gesture.dart';
import 'Calculate.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const colour = Color(0xFF1D1E33);
const inactivecard = Color(0xFF111328);

const bottomcontainerheight = 70.0;
bool genderforcolor = false;
bool genderfemale = false;
enum Gender { male, female }
Gender g;

class _InputPageState extends State<InputPage> {
  Color cardcolormale = inactivecard;
  Color cardcolorfemale = inactivecard;
  int height = 5;
  int weight = 69;
  int age = 25;
  int inch = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          g = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        s1: g == Gender.male ? colour : inactivecard,
                        cardchild: Card1(
                          I2: FontAwesomeIcons.mars,
                          gender: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          g = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        s1: g == Gender.female ? colour : inactivecard,
                        cardchild: new Card1(
                          I2: FontAwesomeIcons.venus,
                          gender: 'Female',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                s1: colour,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toStringAsFixed(0),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'foot',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E9d)),
                        )
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      max: 7,
                      min: 3,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.toInt();
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          inch.toString(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'inch',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E9d)),
                        )
                      ],
                    ),
                    Slider(
                      value: inch.toDouble(),
                      max: 11,
                      min: 0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double dog) {
                        setState(() {
                          inch = dog.round();
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      s1: colour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8D8E9d)),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 49, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              HoldDetector(
                                onHold: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: FloatingActionButton(
                                  heroTag: "btn2",
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Color(0xFF4C4F5E),
                                  child: Icon(FontAwesomeIcons.plus,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 10),
                              HoldDetector(
                                onHold: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  });
                                },
                                child: FloatingActionButton(
                                  heroTag: "btn1",
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    backgroundColor: Color(0xFF4C4F5E),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      s1: colour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8D8E9d)),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 49, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              HoldDetector(
                                onHold: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: FloatingActionButton(
                                  heroTag: "btn3",
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Color(0xFF4C4F5E),
                                  child: Icon(FontAwesomeIcons.plus,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 10),
                              HoldDetector(
                                onHold: () {
                                  if (age > 0) {
                                    age--;
                                  }
                                },
                                child: FloatingActionButton(
                                  heroTag: "btn4",
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    backgroundColor: Color(0xFF4C4F5E),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {

                  Calculate calc=Calculate(foot: height,inch: inch,weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Result(
                    bmiresult: calc.calculatebmi(),
                    info: calc.getinfo(),
                    resulttext: calc.getresult(),
                  )),
                );
              },
              child: Container(
                child: Center(child: Text('calculate',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ),
                margin: EdgeInsets.only(top: 10),
                color: Color(0xFFEB1555),
                height: bottomcontainerheight,
                width: double.infinity,
              ),
            ),
          ],
        ));
  }
}
