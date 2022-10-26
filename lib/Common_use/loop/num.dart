import 'package:netfix/https_functions/functions.dart';

class NumLoop  {
 static  int? number; 

   static Future getnumvalue(int k)async{
    final length=Apifunction.getpopular.length;
    for (int i =k; i < length; i++) {
   await Future.delayed(const Duration(seconds: 3));
    NumLoop.number=i;   
    if(i==length){
      i=0;
    }
    }
  
    return number;
  }
}
