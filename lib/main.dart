import 'package:Mukulum/src/bar.dart';
import 'package:Mukulum/src/pages/Cuentas_mk.dart';
import 'package:flutter/material.dart';

 
void main() => runApp(MyApp(user:username,email: correo,));
 
class MyApp extends StatelessWidget {

   final String user;
   final String email;
  MyApp({Key key, @required this.user,@required this.email}): super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(user);
    //print(email);
    //var media = MediaQuery.of(context).size;
    return MaterialApp(
      
      title: 'MUKULUM',
      debugShowCheckedModeBanner: false,
      color: Colors.brown[300],
      
      home: Hogar(user: user,email: email),
    );
  }
  
}




