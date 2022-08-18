import 'package:calappone/calcsAppHome/calWidget.dart';
import 'package:flutter/material.dart';

class CalAppHome extends StatefulWidget {
  const CalAppHome({Key? key}) : super(key: key);

  @override
  State<CalAppHome> createState() => _CalAppHomeState();
}

class _CalAppHomeState extends State<CalAppHome> {
  late int firstNum;
  late int secondNum;
    String history = '';
   String textToDisplay ='';
  late String response;
  late String Operation;
  void btnOnClick(String btnValue){
  print (btnValue);
  if(btnValue == 'C'){
    firstNum = 0;
    secondNum =0;
    textToDisplay='';
    response='';
  }
  else if(btnValue =='AC'){
    firstNum=0;
    secondNum=0;
    textToDisplay='';
    response='';
    history = '';
  }
  else if(btnValue =='<'){
response = textToDisplay.substring(0,textToDisplay.length-1);
  }
  else if(btnValue == '+'||
  btnValue =='-'||
  btnValue =='X' ||
  btnValue =='/'
  ){
    firstNum = int.parse(textToDisplay);
    response ='';
    Operation = btnValue;
  }else if(btnValue == '='){
    secondNum= int.parse(textToDisplay);
    if(Operation =='+'){
      response = (firstNum + secondNum).toString();
      history = firstNum.toString() + Operation.toString() + secondNum.toString();
    }
    if(Operation =='-'){
      response = (firstNum - secondNum).toString();
      history = firstNum.toString() + Operation.toString() + secondNum.toString();
    }
    if(Operation =='X'){
      response = (firstNum * secondNum).toString();
      history = firstNum.toString() + Operation.toString() + secondNum.toString();
    }
    if(Operation =='/'){
      response = (firstNum / secondNum).toString();
      history = firstNum.toString() + Operation.toString() + secondNum.toString();
    }
  }else {
    response = int.parse(textToDisplay + btnValue).toString();
  }
  setState((){
    textToDisplay =response;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(history,style: TextStyle(color: Colors.black,fontSize: 25)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(textToDisplay,style: TextStyle(color: Colors.black,fontSize: 30)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetO(text: 'AC', callback: btnOnClick,),
                WidgetO(text: 'C', callback: btnOnClick,),
                WidgetO(text: '<', callback: btnOnClick,),
                WidgetO(text: '/', callback: btnOnClick,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetO(text: '9', callback: btnOnClick,),
                WidgetO(text: '8', callback: btnOnClick,),
                WidgetO(text: '7', callback: btnOnClick,),
                WidgetO(text: 'X', callback: btnOnClick,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetO(text: '6', callback: btnOnClick,),
                WidgetO(text: '5', callback: btnOnClick,),
                WidgetO(text: '4', callback: btnOnClick,),
                WidgetO(text: '-', callback: btnOnClick,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetO(text: '3', callback: btnOnClick,),
                WidgetO(text: '2', callback: btnOnClick,),
                WidgetO(text: '1', callback: btnOnClick,),
                WidgetO(text: '+', callback: btnOnClick,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetO(text: '+/-', callback: btnOnClick,),
                WidgetO(text: '0', callback: btnOnClick,),
                WidgetO(text: '00', callback: btnOnClick,),
                WidgetO(text: '=', callback: btnOnClick,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
