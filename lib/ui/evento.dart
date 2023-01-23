import 'package:flutter/material.dart';
import 'package:meet2go/api/data.dart';

class Eventillo extends StatelessWidget{
  
  Data evento;

  Eventillo({required this.evento}): super();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor:Color.fromARGB(255, 22, 22, 22)),
     body: 
     ListView(
      padding: EdgeInsets.all(15.0),
      children: <Widget>[ 
        Image.network(this.evento.getImage()),
        Text(this.evento.getfecha(), style: TextStyle(color: Color.fromARGB(60, 0, 0, 0) ,fontSize: 20 ),),
        Text(this.evento.information, style: TextStyle(fontSize: 17),)
      ],
     ),
    );
  }
}