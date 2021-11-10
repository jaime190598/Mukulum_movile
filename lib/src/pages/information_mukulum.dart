//import 'package:Mukulum/main.dart';
import 'package:flutter/material.dart';
//import 'package:Mukulum/src/pages/home_mukulum.dart';
 
//void main() => runApp(MyApp());
 
class Information extends StatelessWidget {
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
              //print('Retorno');
              Navigator.pop(context);
             //Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()),);
            },
          ),
         title: Text('CAFÉ MUKULUM') ,
         
          
        ),),
        body: Container(

           padding: EdgeInsets.symmetric(horizontal:16),
          decoration: BoxDecoration(color: Colors.white70 ),
          child: ListView(
            
            children: <Widget>[
             
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Image.asset('assets/mukul_cafe.jpg',alignment: Alignment.topCenter,height: 250,),
              ),
             
            Padding(
                padding: const EdgeInsets.only(top:10),
                child: Title(color: Colors.white, child: Text('Visión',
                style: TextStyle(fontSize:22.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.center,)),
              ),Divider(color:Colors.transparent,height: 8.0,),
              Text('Posicionar el café mexicano como uno de los'+
              ' mejores del mundo a través de la utilización de alta'+
              ' tecnología, materia prima de la mejor calidad y personal'+
              ' altamente calificado ',
               style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.justify,),
            Padding(
                padding: const EdgeInsets.only(top:10),
                child: Title(color: Colors.white, child: Text('Nuestro Origen',
                style: TextStyle(fontSize:22.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.center,)),
              ),Divider(color:Colors.transparent,height: 8.0,),
              Text('Café MUKULUM nace en la localidad de Bachajón,'+
              ' Chilón, Chiapas, con nuestro fundador c. pedro Jiménez Trujillo,'+
              ' que ha raíz de su experiencia como comprador de café se da a la tarea'+
               ' en 1998 de ir seleccionando los mejores granos de la región (tzeltal),'+
                ' y llevarlo al producto final primeramente para su familia y amigos más'+
                 ' allegados teniendo muy buenos comentarios decide llevarlo al público en general,'+
                  ' en un principio se llamó “CAFÉ K’APPEL” que tiene un significado en tzeltal de k’appel=café'+
                   ' (café café), quedando este producto en el mercado local. en la transición de producto de café'+
                    ' de calidad, se lleva la tarea de tener una imagen más formal y registrar la marca, donde se opta'+
                     ' por cambiarle el nombre a uno más significativo del pueblo, “MUKULUM” que en la lengua tzeltal'+
                      ' significa tierra grande como antiguamente se le conocía al pueblo de Bachajón. nos distinguimos'+
                       ' café MUKULUM se distingue por colaborar de la mano con los productores de café indígenas'+
                        ' tzeltales, y de esta manera tener el mejor grano posible para elaborar el producto de más'+
                         ' alta calidad que su paladar merece.',
               style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.justify,),
             Divider(
              color:Colors.transparent,
              height: 50.0,
              ),

            ],
          ),


        ),
        
      ),
    );
  }
}

