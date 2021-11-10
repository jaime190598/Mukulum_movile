import 'package:Mukulum/src/pages/weview_mk.dart';
import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
 
class Distribuidora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
String url1='https://www.google.com/maps/place/Marchante+Mercadito+Culinario/@16.7375765,-92.6376838,17z/data=!3m1!4b1!4m5!3m4!1s0x85ed45404ba3c519:0x44916911488108b0!8m2!3d16.7375765!4d-92.6354951';
String url2='https://www.google.com/maps/place/Hilton+Garden+Inn+Tuxtla+Gutierrez/@16.7540563,-93.1495743,17z/data=!3m1!4b1!4m8!3m7!1s0x85ecd90ef7a512af:0x5635acc6a97d13e8!5m2!4m1!1i2!8m2!3d16.7540563!4d-93.1473856';
String url3='https://www.google.com/maps/place/Calle+Septima+Ote.+Sur+789,+Asamblea+de+barrio,+San+Roque,+29040+Tuxtla+Guti%C3%A9rrez,+Chis./@16.7469275,-93.1133573,17z/data=!4m15!1m8!3m7!1s0x85ecd8627155bf47:0x4b3ceb7563e6ffec!2sCalle+Septima+Ote.+Sur+789,+Asamblea+de+barrio,+San+Roque,+29040+Tuxtla+Guti%C3%A9rrez,+Chis.!3b1!7e2!8m2!3d16.7469275!4d-93.1111686!3m5!1s0x85ecd8627155bf47:0x4b3ceb7563e6ffec!7e2!8m2!3d16.7469275!4d-93.1111686';  
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
         title: Text('Sucursales') ,
          
        ),),
        body:Container(
          padding: EdgeInsets.symmetric(horizontal:16),
          decoration: BoxDecoration(color: Colors.white70 ),
          
          child: ListView(
         
                children:[
         Divider(
              color:Colors.transparent,
              height: 10.0,
              ),
                 
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text('San Cristobal de las Casas:',
              style: TextStyle(fontSize:22.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.center,),
                  ),
                     Padding(
               padding: const EdgeInsets.only(top:10.0),
               child: MaterialButton( 
                 child: Image.asset('assets/marchante.PNG',height:300,fit: BoxFit.cover,),   
               splashColor: Colors.white70,
                onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Edview(url:url1,))); 
                },
             )
             ),  
           
              Text('Ubicación:',
              style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,
            color: Colors.lightBlue)),
            Text('Real de Guadalupe 28, Zona Centro, 29200 San Cristóbal de las Casas, Chis.',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),
            Text('Horario:',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),
            Text('Lunes a Domingo de : 11:00 a 22:00 horas',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),

            Divider(
              color:Colors.brown,
              height: 10.0,
              ),

            Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text('Tuxtla Gutierrez:',
              style: TextStyle(fontSize:22.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.center,),
            
                  ),
               Padding(
               padding: const EdgeInsets.only(top:10.0),
               child: MaterialButton( 

                 child: Image.asset(
                  'assets/hilton.PNG',height: 300,fit: BoxFit.cover,
                ),     
               splashColor: Colors.white70,
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Edview(url:url2,))); 
                },
             )
             ),
              Text('Ubicación:',
              style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,
            color: Colors.lightBlue),),
            Text('Boulevard Belisario Dominguez, De Los Castillos 1641, 29050 Tuxtla Gutiérrez, Chis.',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),
            Text('Horario:',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),
            Text('Lunes a Domingo ',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),

 Divider(
              color:Colors.brown,
              height: 10.0,
              ),

            Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text('Tuxtla Gutierrez:',
              style: TextStyle(fontSize:22.0,fontStyle: FontStyle.normal,
            color: Colors.black),textAlign: TextAlign.center,),
            
                  ),
             Padding(
               padding: const EdgeInsets.only(top:10.0),
               child: MaterialButton( 

                 child: Image.asset(
                  'assets/calle.PNG',height: 300,fit:BoxFit.cover
                ),     
               splashColor: Colors.white70,
               onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Edview(url:url3,)));  
               },
               )
             ),
              Text('Ubicación:',
              style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,
            color: Colors.lightBlue)),
            Text('Sugerir un cambio para Calle Septima Ote. Sur 789',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),
            Text('Horario:',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),
            Text('Lunes a Domingo de : 9:00 a 22:00 horas',
              style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,
            color: Colors.black)),

             Divider(
              color:Colors.transparent,
              height: 50.0,
              ),
              
              ]

          ),
        ),
        
      ),
    );
  }
}

