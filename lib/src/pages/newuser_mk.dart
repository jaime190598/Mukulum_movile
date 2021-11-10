//import 'dart:async';
import 'package:Mukulum/main.dart';
import 'package:Mukulum/src/pages/Cuentas_mk.dart';
//import 'package:Mukulum/src/pages/contactos_mk.dart';
import 'package:flutter/rendering.dart';
//import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



 class NewUsuario extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
//mensaje='';
    return MaterialApp(
      title: 'MUKULUM',
      debugShowCheckedModeBanner: false,
      color: Colors.brown[300],
      home: new NewUser(),
      routes: <String,WidgetBuilder>{
        '/homePage': (BuildContext context)=> new MyApp(user: username,email: correo,),
        //'/loginPage':(BuildContext context)=> new LoginPage(),
      },
      
      );
  }

 }

 class NewUser extends StatefulWidget {
    @override
   _CrearCuenta createState() => _CrearCuenta();
   
 }
  

class _CrearCuenta extends State<NewUser>{

  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
   TextEditingController controllerPass2 = new TextEditingController();
  String nivel ='Usuario';
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerNombre = new TextEditingController();
  TextEditingController controllerApellido = new TextEditingController();
  TextEditingController controllerEstado = new TextEditingController();
  TextEditingController controllerDomicilio = new TextEditingController();

String mensaje='';
String seguir='';
String exito='';
   // final _formKey = GlobalKey<FormState>();

    void _log() async {
      if(controllerUser.text!=''){
        if(controllerEmail.text!=''){  
         // print(controllerEmail.text);
          if(seguir!=''){
          if(controllerPass.text!=''){
            if(controllerNombre.text!=''){
              if(controllerDomicilio.text!=''){
                if(controllerEstado.text!=''){
                  if(controllerApellido.text!=''){
      if(controllerPass.text==controllerPass2.text){
       
      http.post("http://192.168.1.104/mukulum/adddata.php",
      body:{
        "username": controllerUser.text,
        "password": controllerPass.text,
         "nivel": nivel,
         "email": controllerEmail.text, 
      });
      
      setState(() {
        mensaje='';
         exito='Usuario registrado exitosamente';
         seguir='';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      controllerPass2.text='';
       });
      
      print('logrado');
      controllerUser.text='';
      controllerPass.text='';
      controllerPass2.text='';
      controllerEmail.text='';
      controllerNombre.text='';
      controllerApellido.text='';
      controllerEstado.text='';
      controllerDomicilio.text='';

    
          showDialog(context: context,builder: (context)=>AlertDialog(
                               title: Center(child: Icon(Icons.verified_user,size: 50,)),
                                 content: Center(child: Text(exito,style: TextStyle(color:Colors.blue),)),actions: <Widget>[
                                   FlatButton(
                                   color: Colors.brown.shade400,
                                   child: Text('Aceptar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ), 
                                ],
                               elevation:30.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
       

      }else{
         setState(() {
         mensaje='Las contraseñas son diferentes';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      controllerPass2.text='';
       });
       
      }}else{
        setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });
      }}else{ setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });}}else{ setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });}}else{ setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });}}else{ setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });}
      }else{ setState(() {
         mensaje='Email incorrecto';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });}
       }else{
          setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });
       }
       
       }else{
         setState(() {
         mensaje='Faltan campos por llenar';
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewUser()),
            );
      
       });
         
       }
     

    }

  Widget usuario(){
 return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(controller: controllerUser,
                decoration: InputDecoration(icon: Icon(Icons.supervised_user_circle,color: Colors.black,),
                labelText:'Nombre de Usuario'),),
              );
               
  }
  Widget crearPassword(){
    return Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: TextFormField(controller: controllerPass,
                 decoration: InputDecoration(icon: Icon(Icons.remove_red_eye, color: Colors.black,),
                labelText:'Ingresar contraseña'),
                 obscureText: true,
                 maxLength: 8,
                 ),
                 
               );
  }
   Widget verificarPassword(){
    return Padding(
                 padding: const EdgeInsets.only(top:2),
                 child: TextFormField(controller: controllerPass2,
                 decoration: InputDecoration(icon: Icon(Icons.remove_red_eye,color: Colors.black,),
                 labelText:'Ingresar contraseña'),
                 obscureText: true,
                 maxLength: 8,
                 ),
               );
  }
  
  Widget email(){
 return Padding(
                padding: const EdgeInsets.only(top: 2),
                child: TextFormField(controller: controllerEmail,
                decoration: InputDecoration(icon: Icon(Icons.email,color: Colors.black,),
                labelText:'Ingresar Correo electrónico'),
                onChanged: validateEmail,
                keyboardType: TextInputType.emailAddress,
                
                ),
              );
               
  }
  String validateEmail(String value) {
 String pattern =
     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
 RegExp regExp = new RegExp(pattern);
 if (value.length == 0) {
   return "El correo es necesario";
 } else if (!regExp.hasMatch(value)) {
   return "Correo invalido";
 } else {
   return seguir='seguir';
 }
}
 Widget name(){
 return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(controller: controllerNombre,
                decoration: InputDecoration(icon: Icon(Icons.people,color: Colors.black,),
                labelText:'Nombres'),),
              );
               
  }
  Widget apellido(){
 return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(controller: controllerApellido,
                decoration: InputDecoration(icon: Icon(Icons.people,color: Colors.black,),
                labelText:'Apellido'),),
              );
               
  }
  Widget estado(){
 return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(controller: controllerEstado,
                decoration: InputDecoration(icon: Icon(Icons.map,color: Colors.black,),
                labelText:'Estado'),),
              );
               
  }
 Widget domicilio(){
 return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(controller: controllerDomicilio,
                decoration: InputDecoration(icon: Icon(Icons.home,color: Colors.black,),
                labelText:'Domicilio'),),
              );
               
  }

  Widget crearBoton(BuildContext context){
    return Container(padding:const EdgeInsets.only(top:32),
    child: MaterialButton(
      minWidth: 200.00,
      height:80.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Text('Registrarme',style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,
          color: Colors.white),), 
      splashColor: Colors.white70,
      color: Colors.brown.shade500,
    onPressed: (){
      _log();
      
      Navigator.pop(context);
     
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
              //print('Retorno');
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp(user:username,email: correo)));
             //Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()),);
            },
          ),       
         title: Text('Registrarse') ,
         
          
        ),
        
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal:16),
          decoration: BoxDecoration(color: Colors.white70 ),
          child: ListView(
            children:[
             // Image.asset(
             //   'assets/mukul.jpg',height: 350,
             // ),
             usuario(),
             crearPassword(),
              verificarPassword(),
              email(),
              name(),
              apellido(),
              estado(),
              domicilio(),
              Text(mensaje,style: TextStyle(fontSize: 15.0,color: Colors.red),),
             crearBoton(context),
            // Text(exito,style: TextStyle(fontSize: 15.0,color: Colors.blue),),
           
           
            ]
          ),

        ),
        
      
      
      
    );
  }
 
}