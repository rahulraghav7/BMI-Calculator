import 'dart:math';
class Calculate{
Calculate({this.foot,this.inch,this.weight});
 final int foot;
 final int inch;
 final int weight;
 double bmi;
String calculatebmi()
{
  int height=(foot*12)+inch;
  double inm=height*0.0254;
   bmi=weight/pow(inm,2);
  return bmi.toStringAsFixed(1);
}
String getresult()
{
  if(bmi>25)
  {
    return'Overweight';
  }
  else if(bmi>18.5){
return'Normal';
  }
  else{
    return'underweight';
  }
}
String getinfo()
{
  if(bmi>25)
  {
    return'you should go on a diet and exercise more';
  }
  else if(bmi>18.5){
return'you are normal';
  }
  else{
    return'you should start taking more nutrients';
  }
}
}
