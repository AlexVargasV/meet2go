import 'package:flutter/material.dart';
import 'package:meet2go/buscar.dart';
//import 'package:meet2go/api/thedataservice.dart';
import 'package:meet2go/login.dart';
//import 'package:meet2go/ui/cajaevento.dart';
//import 'package:meet2go/ui/spinnerwidget.dart';
import 'package:carousel_slider/carousel_slider.dart';
final List<String> imgList = [
  'https://jashunter.com/slide1.png',
  'https://jashunter.com/slide2.jpg',
  'https://jashunter.com/slide3.jpeg',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo123',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: meet2gopage(),
    );
  }
}
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
class meet2gopage extends StatelessWidget {
  @override
  Widget build(BuildContext context){

      return Scaffold(
        appBar: AppBar(
          title: Image.network('https://jashunter.com/logo.png', width:100, height: 100, ),
            backgroundColor: Colors.black,
            actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.person_pin,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      },
    )
  ],
        ),
        backgroundColor: Colors.black,
        body: 
        ListView(

          children:<Widget> [
               TextField(
                    readOnly: true,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Buscar()));
                    },
                    decoration: InputDecoration(
                    hintText: "Buscar Por Artista o Por Ciudad",
                    hintStyle: TextStyle(color: Colors.white24 ,fontSize: 18 ), 
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                       borderSide: BorderSide(width: 3, color: Colors.white24),
                     borderRadius:
                     
                    BorderRadius.all(Radius.circular(25.0)),
                              ),
                              
                            ),
            
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 16),
                            height: 440,
                            child: 
            Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                      )),
                    ))
                .toList(),
          );
        },
      ),
    ),
          ],
          ),            
     
      );
  }
}