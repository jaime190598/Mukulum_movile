

import 'package:Mukulum/src/pages/Cuentas_mk.dart';
import 'package:Mukulum/src/pages/cafe_mk.dart';
import 'package:Mukulum/src/pages/comentarios_mk.dart';
import 'package:Mukulum/src/pages/home_mukulum.dart';
import 'package:Mukulum/src/pages/menu_lt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Hogar extends StatefulWidget{
   final String user;
   final String email;
  Hogar({Key key, @required this.user,@required this.email}): super(key: key);

  State<StatefulWidget> createState()=> BarHome(user: user,email: email);
}
class BarHome extends State<Hogar>{
    final String user;
    final String email;
  BarHome({Key key, @required this.user,@required this.email});

  int _selectedIndex=0;
   
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
var cont;


@override
Widget build(BuildContext context) {
  List<Widget> _children = [
    HomePageTemp(user: user,email: email,),Cafe(),Comentarios(),
    
  ];

  return Scaffold(
  backgroundColor: Colors.brown.shade900,
         appBar: PreferredSize(
           preferredSize: Size.fromHeight(55.0),
           child: AppBar(   
                
         centerTitle: true,
         backgroundColor: Colors.brown.shade700,
         title: Text('MUKULUM') ,
          
        ),), 
        drawer: MenuLt(user:user,email:email),
        
        body:_children[_selectedIndex],

        bottomNavigationBar:BottomNavigationBar(
       currentIndex: _selectedIndex,
     fixedColor: Colors.amber[800],
      onTap:_onItemTapped,
      items: const <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Hogar'),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_cafe),
          title: Text('Café'),
          
        ),
        //BottomNavigationBarItem(
        //  icon: Icon(Icons.message),
         // title: Text('Comentarios'),
        //),
      ],
      
        ),
  );

}
void _onItemTapped(int index) {
  setState((){
        _selectedIndex=index;
  });
  
}

}