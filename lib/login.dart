import 'package:flutter/material.dart';

class Login extends StatelessWidget{
@override 
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(backgroundColor:Color.fromARGB(255, 22, 22, 22)),
    
    body: const MyStatefulWidget(),
    backgroundColor: Color.fromARGB(255, 22, 22, 22),
  );
}

}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: Image.network('https://jashunter.com/logo.png', width:200, height: 200, )),
                Text("Bienvenido!", style: TextStyle(color: Colors.white, fontSize: 45),textAlign: TextAlign.center),
                
             Container(
                  child:Text("Use the form below to access your account", style: TextStyle(color: Colors.white24, fontSize: 15),textAlign: TextAlign.center) ,
             ) ,  
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0), 
                    ),
                    borderSide: BorderSide(width: 3, color: Colors.white24)
                  ),
                  
                  hintText: ("Email Adress"), //hint text
                  hintStyle: TextStyle(color: Colors.white24 ,fontSize: 18 ), 
                  
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,

                decoration: const InputDecoration(
                   enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0), 
                    ),
                    borderSide: BorderSide(width: 3, color: Colors.white24)
                    
                  ),
                   hintText: ("Password"), //hint text
                  hintStyle: TextStyle(color: Colors.white24 ,fontSize: 18 ), 
                  
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('',),
            ),
            Row(
              children: [
                Container(
                height: 50,
                width: 180,
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 41, 41, 41)
                  ),
                  child: const Text('Forgot Password?',style: TextStyle(color: Color.fromARGB(255, 49, 49, 49))),
                  onPressed: () {
                  },
                )
            ),
            Container(
                height: 50,
                width: 150,
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 0, 0)
                  ),
                  child: const Text('Login',style: TextStyle(color: Colors.white),),
                  onPressed: () {
                  },
                )
            ),

              ],
            ),
            Row(
              children: <Widget>[
                const Text('Dont have a account?', style: TextStyle(fontSize: 15, color: Colors.white),),
                TextButton(
                  child: const Text(
                    'Create an Account',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}