import 'package:flutter/material.dart';
import 'package:meet2go/api/thedataservice.dart';
import 'package:meet2go/ui/cajaevento.dart';
import 'package:meet2go/ui/spinnerwidget.dart';
class Buscar extends StatelessWidget{
@override 
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(backgroundColor:Color.fromARGB(255, 22, 22, 22)),
    
    body:    FutureBuilder (
          
          future: TheDataService().getTopRatedMovies(),
          builder:
           (BuildContext context, AsyncSnapshot<List> snapshot ){
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  var evento = snapshot.data![index];
                  return CajaEvento ( evento: evento);
                }
                );
            }else{
              return SpinnerWidget();
            }

           }
        )
  );
}
}