import 'package:flutter/material.dart';
import 'package:meet2go/api/data.dart';
import 'package:meet2go/ui/evento.dart';

class CajaEvento extends  StatelessWidget{
  
  Data evento;

  CajaEvento({required this.evento});

  @override
  Widget build(BuildContext context){
    appBar: AppBar(backgroundColor:Color.fromARGB(255, 22, 22, 22));
    backgroundColor: Colors.black;
    return ListTile(
      title: Text(this.evento.name),
      subtitle: Text(this.evento.getfecha()),
      trailing: Image.network(this.evento.getImage()),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
        (context) => Eventillo (evento: this.evento)));
      },
    );

  }


}