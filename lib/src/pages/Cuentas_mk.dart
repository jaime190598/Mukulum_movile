import 'dart:async';
import 'dart:convert';
import 'package:Mukulum/main.dart';
import 'package:Mukulum/src/pages/newuser_mk.dart';
//import 'package:Mukulum/src/pages/contactos_mk.dart';
import 'package:flutter/rendering.dart';
//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:json_annotation/json_annotation.dart';
String username;
String correo;
String mensaje='';



 class LoginApp extends StatelessWidget{
  final String user;
final String email;
 LoginApp({Key key, @required this.user,@required this.email}): super(key: key);
 
  @override
  Widget build(BuildContext context) {
    username=user;
    correo=email;
   mensaje='';
    return MaterialApp(
      title: 'MUKULUM',
      debugShowCheckedModeBanner: false,
      color: Colors.brown[300],
      home: new LoginPage(),
      routes: <String,WidgetBuilder>{
        '/homePage': (BuildContext context)=> new MyApp(user: username,email: correo,),
        '/loginPage':(BuildContext context)=> new LoginPage(),
        '/NewUser':(BuildContext context)=> new NewUsuario(),
      },
      
      );
  }

 }
  class LoginPage extends StatefulWidget {
    @override
   _Cuenta createState() => _Cuenta();
 }

class _Cuenta extends State<LoginPage>{

  TextEditingController controllerUser = new TextEditingController();
    TextEditingController controllerPass= new TextEditingController();

    

    Future<List> _log() async {
      var datauser ;
      if(controllerUser.text!=''){
        if(controllerPass.text!=''){
      final response = await http.post("http://192.168.1.104/mukulum/login.php",
      body:{
        "username": controllerUser.text,
        "password": controllerPass.text,

      });
    
    
     datauser = json.decode(response.body);
}else{
        setState(() {
         mensaje="Usuario o Contraseña incorrecto";
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
       });
      }}
      else{
        setState(() {
         mensaje="Usuario o Contraseña incorrecto";
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
       });
      }


     if(datauser.length == 0){
       setState(() {
         mensaje="Usuario o Contraseña incorrecto";
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
       });
     } else {
       setState(() {
       username=datauser[0]['username'];
       correo=datauser[0]['email'];
     });
       if(datauser[0]['nivel']=='Admin'){
        // print('logrado admin');
        // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
      Navigator.pushReplacementNamed(context,'/homePage');
     } else if(datauser[0]['nivel']=='Usuario'){
       // print('logrado usuario');
      Navigator.pushReplacementNamed(context,'/homePage');
     }
     
     }
    // print(email);
    return datauser;
      
    }

  Widget emailUsuario(){
 return Padding(
                padding: const EdgeInsets.only(top: 20),
                
                child: TextFormField(controller: controllerUser,
                decoration: InputDecoration(icon: Icon(Icons.email,color: Colors.black,),
                hintText:'Usuario o correo electronico'),),
              );
               
  }
  Widget crearPassword(){
    return Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: TextFormField(controller: controllerPass,
                 decoration: InputDecoration(icon: Icon(Icons.vpn_key,color: Colors.black,),
                 hintText:'Contraseña'),obscureText: true,),
               );
  }
  Widget crearBoton(BuildContext context){
    return Container(padding:const EdgeInsets.only(top:32),
    child: MaterialButton(
      minWidth: 200.00,
      height:80.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Text('Entrar',style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,
          color: Colors.white),), 
      splashColor: Colors.white70,
      color: Colors.brown.shade500,
    onPressed: (){
      _log();
      //Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp(user: username,email: correo,)));
      Navigator.pop(context);
      username=null;
      correo=null;
      //print(username);
    }),
    
    );
  }
  Widget crearAccountLink(){
    return Container(
     child: MaterialButton(
     child: Row(
         mainAxisAlignment:  MainAxisAlignment.center,
         children:[
           Padding(
             padding: const EdgeInsets.only(right: 10),
             child: Icon(Icons.person_add,color: Colors.white,),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 5),
             child: Text('Crear cuenta ',style: TextStyle(color: Colors.white),),
           )
         ]
       ), splashColor: Colors.white70,
      color: Colors.brown.shade500,
      onPressed: (){
        Navigator.pushReplacementNamed(context,'/NewUser');
       },
       )
    );
  }
  Widget divisor(){
    return Container(
      padding: const EdgeInsets.only(top:20),
      child: Row(children: <Widget>[
       Expanded(child: Divider(height: 1,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:8 ),
          child: Text('O'),
        ),
        Expanded(child: Divider(height: 1)),
      ],)
      );
  }
  Widget facebook(){
     return Container(
       padding:  const EdgeInsets.only(top:10),
       child: MaterialButton( child: Row(
         mainAxisAlignment:  MainAxisAlignment.center,
         children:[
           Icon(FontAwesomeIcons.facebookSquare,color: Colors.white,),
           Padding(
             padding: const EdgeInsets.only(left: 15),
             child: Text('Entrar con Facebook',style: TextStyle(color: Colors.white),),
           )
         ]
       ),
       splashColor: Colors.white70,
      color: Colors.brown.shade500,
       onPressed: (){},
       ),
     );
  }
 
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
         backgroundColor: Colors.white,
         appBar: PreferredSize(
           preferredSize: Size.fromHeight(55.0),
           child: AppBar(        
         centerTitle: true,backgroundColor: Colors.brown.shade700,leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.white,size: 35.0,),
            tooltip: 'Retorno',
            onPressed: () {
              
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp(user: username, email: correo,)));
             //Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()),);
            },
          ),       
         title: Text('Bienvenido') ,
       
          
        ),
        
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal:16),
          decoration: BoxDecoration(color: Colors.white70 ),
          child: ListView(
            children:[
              Image.asset(
                'assets/mukul.jpg',height: 350,
              ),
             emailUsuario(),
             crearPassword(),
             crearBoton(context),
             Text(mensaje,style: TextStyle(fontSize: 15.0,color: Colors.red),),
             divisor(),
             crearAccountLink(),
             facebook(),
            ]
          ),

        ),
        
      
      
      
    );
  }
 
}
 
 
