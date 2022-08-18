import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetO extends StatelessWidget {
  final String text;
  final Function callback;
  const WidgetO({Key? key, required this.text, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: SizedBox(
        width: 70,
        height: 70,
        child: CupertinoButton(
          child:Text(text,style: TextStyle(color: Colors.black,fontSize: 20)) ,
           onPressed: ()=>callback(text),
        ),
      ),
    );
  }
}
