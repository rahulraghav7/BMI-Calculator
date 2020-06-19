import 'package:flutter/material.dart';
import 'custom.dart';
import 'input.dart';
class Result extends StatelessWidget {
  Result({@required this.bmiresult,@required this.info,@required this.resulttext});
  final String bmiresult;
  final String resulttext;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            alignment: Alignment.bottomLeft,
                child: Text('Your Result',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
            ),
            Expanded(
              flex: 5,   
              child:ReusableCard(s1:colour,cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly
                ,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resulttext.toUpperCase(),
                  style: TextStyle(color: Color(0xFF24D876),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiresult,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 100),
                  


                  ),
                  Text(
                  
                   info,
                    style: TextStyle(fontSize: 22),
                    textAlign:  TextAlign.center,
                  )
                ],
              ),) ,
              
            )
            
          ],
        )
    );
  }
}