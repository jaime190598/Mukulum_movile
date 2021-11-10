//import 'package:Mukulum/main.dart';
import 'dart:math';

import 'package:Mukulum/src/pages/CardAlbum.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Album.dart';
String picture1='assets/mukul.jpg';
String nameadmin='Damian Jimenez hernandez';
String telefono='9191604515';

class Contacto extends StatelessWidget {
  List<Album>albums=Album.albums();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'MUKULUM',
      debugShowCheckedModeBanner: false,
      color: Colors.brown[300],
      
      home: Scaffold(
         backgroundColor: Colors.white,
         appBar: PreferredSize(
           preferredSize: Size.fromHeight(55.0),
           child: AppBar(        
         centerTitle: true,backgroundColor: Colors.brown.shade700,leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.white,size: 35.0,),
            tooltip: 'Retorno',
            onPressed: () {
             // print('Retorno');
              Navigator.pop(context);
             //Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()),);
            },
          ),
        
        
         title: Text('Contacto') ,
        
          
        ),),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal:12),
          decoration: BoxDecoration(color: Colors.brown.shade300 ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: albums.length,
            itemBuilder: (BuildContext context,int index){
              return Dismissible(
                key: ObjectKey(albums[index]), 
                child: CardAlbum(albums[index]),
              
              );


            },
          )))
    );
  }
}

