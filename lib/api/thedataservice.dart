import 'package:meet2go/api/data.dart';
import 'package:meet2go/api/datas.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TheDataService{
  final String API_url = "https://app.meet2go.com/items/events";
  final String API_key = "xxxxxxxxxxxxxxxxxxxxxx";

  Future <List<Data>> getTopRatedMovies() async{
    var url = API_url;
    final respuesta = await http.get(Uri.parse(url));
    if(respuesta.statusCode == 200)
    {
      final respuestaJSON = json.decode(respuesta.body);
      final DatosdeEventos = Datas.fromJsonList(respuestaJSON['data']);
      return DatosdeEventos;
    }
    return <Data>[];
  }
}

