import 'package:flutter/material.dart';
class Card1 extends StatelessWidget {
  Card1({this.I2,this.gender});
  final IconData I2;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          I2,
          size: 90,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          '$gender',
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E9d)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.s1, this.cardchild});
  final Color s1;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), color: s1),
    );
  }
}