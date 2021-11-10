
import 'package:Mukulum/src/pages/Cuentas_mk.dart';
import 'package:Mukulum/src/pages/compras_mk.dart';
import 'package:Mukulum/src/pages/contactos_mk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'distribuidora_mk.dart';
import 'information_mukulum.dart';

 class HomePageTemp extends StatelessWidget{
   final String user;
    final String email;
  HomePageTemp({Key key, @required this.user,@required this.email});

Widget _car1(context){
  
 return Card(color: Colors.brown.shade900,
             child:Column( children:<Widget>[  
               
      FlatButton(
           
            color: Colors.brown.shade900,
            child: Icon(Icons.book,color: Colors.white,size: 50.0,),
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Products(user: user,email: email,)),);
            }
          ),Text('Productos',style: TextStyle(fontSize:15.0,color:Colors.white),textAlign: TextAlign.center,)
          ],),
    );
  
}

@override 
Widget build(BuildContext context) {
 
  print( user);
  print(email);
 return Column(
   
  mainAxisAlignment:  MainAxisAlignment.start,
  children: <Widget>[
  Flexible(child:
    Image.asset('assets/mukulum3.gif'),),
     // Divider(color: Colors.white,thickness: 2.0,endIndent: 20,indent: 20,),
       
    Row(mainAxisAlignment:  MainAxisAlignment.center,
      children: <Widget>[ 
             Flexible(child: FlatButton(
           //minWidth: 200.0,
           //height:50.0,

            color: Colors.brown.shade900,
            child: Text('Ingresar o Crear cuenta', style: TextStyle(fontSize:15.0,fontStyle: FontStyle.normal,
            color: Colors.white),),
            onPressed:(){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginApp(user: null,email: null,)));
            }
          ),
     )]),
        Divider(color: Colors.white,thickness: 1.0,endIndent: 70,indent: 70,),
        Divider(color: Colors.white,thickness: 1.0,endIndent: 40,indent: 40,),
    Padding(
      padding: const EdgeInsets.only(top:15),
      child: Row(
       
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        
        children: <Widget>[
         Card(color: Colors.brown.shade900,
             child:Column( children:<Widget>[ 
      FlatButton(
           //minWidth: 150.0,
           //height:80.0,
            color: Colors.brown.shade900,
            //splashColor: Colors.white,
            child: Icon(Icons.location_on,color: Colors.white,size: 50.0,),
            onPressed:(){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Distribuidora()),);
            }
          ),Text('Sucursales',style: TextStyle(fontSize:15.0,color:Colors.white),textAlign: TextAlign.center,)
          ])),
          if(user!=null) 
          _car1(context)
          ])),
       Padding(
         padding: const EdgeInsets.only(top:15),
         child: Row(
          
      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      children: <Widget>[ 
        Card(color: Colors.brown.shade900,
        child:
       
         Column( children:<Widget>[
   FlatButton(
           //minWidth: 150.0,
           //height:80.0,
            color: Colors.brown.shade900,
            child: Icon(Icons.contacts,color: Colors.white,size: 45.0,),
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Contacto()),);
            }
          ),Text('Contactos',style: TextStyle(fontSize:15.0,color:Colors.white),textAlign: TextAlign.center,)
          ],), ),

           Card(color: Colors.brown.shade900,
           child: Column( children:<Widget>[
    FlatButton(
          // minWidth: 150.0,
          // height:80.0,
            color: Colors.brown.shade900,
            child: Icon(Icons.info_outline,color: Colors.white,size: 50.0,),
            onPressed:(){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Information()),);
            }
          ),Text('Información',style: TextStyle(fontSize:15.0,color:Colors.white),textAlign: TextAlign.center,),
          ],),
       ), 
     ],),)
   
   ] );
}
   @override
   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
     super.debugFillProperties(properties);
     properties.add(StringProperty('user', user));
   }

 }