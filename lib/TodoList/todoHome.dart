import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDetails{
  final String name;
  final String age;

  MyDetails({required this.name, required this.age});

}


class TodoListHome extends StatefulWidget {
  const TodoListHome({Key? key}) : super(key: key);

  @override
  State<TodoListHome> createState() => _TodoListHomeState();
}

class _TodoListHomeState extends State<TodoListHome> {
  String name='';
  String age='';
  String nname='';
  String aage='';
  List details=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TodoList')),
      body: Column(
        children: [
          TextField(
            onChanged: (String value) {
              setState((){
                name=value;
              });
            },
          ),
          TextField(
            onChanged: (String value) {
              setState((){
                age=value;
              });
            },
          ),
          CupertinoButton(child: Text('save'), onPressed:(){
            setState((){
              nname=name;
              aage=age;
              details.add(MyDetails(name: nname, age: aage));
            });
          }),
          Expanded(child: ListView.builder(
            itemCount: details.length,
            itemBuilder: (context, index) {
            return ListTile(
              title: Text('${details[index].name}'),
              subtitle:Text('${details[index].age}'),
              trailing: IconButton(
                onPressed: (){
                  setState((){

                  });
                },
                icon: Icon(Icons.delete),
              ),
            );
          },))
        ],
      ),
    );
  }
}
