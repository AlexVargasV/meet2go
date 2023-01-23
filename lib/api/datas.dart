import 'package:meet2go/api/data.dart';


class Datas{

  Datas();
  static List<Data> fromJsonList(List<dynamic> jsonList)
  {
    List<Data> listaEventos = [];
    if(jsonList != null)
    {
      for(var evento in jsonList){
        final eventito = Data.fromJson(evento);
        listaEventos.add(eventito); 
      }
    }
    return listaEventos;
  }
}