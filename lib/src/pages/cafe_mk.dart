//import 'package:Mukulum/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';


//import 'package:Mukulum/src/pages/home_mukulum.dart';
 
//void main() => runApp(MyApp());
 
class Cafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return  ListView(children: <Widget>[

 
  Column(
     mainAxisAlignment:  MainAxisAlignment.start,
  children: <Widget>[
  Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Row(
    mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children:[
 InkWell(
            onTap: (){
             
                  _SettingModalBottomSheel(context);
              
            },
            
      child: 
      Card( 
        clipBehavior:  Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        margin: EdgeInsets.symmetric(horizontal:10.0),
      
        color: Colors.brown.shade900,        
     child:Column(children:<Widget>[
     Container(
       decoration: BoxDecoration(
                                  //border:Border.all(width:1,color:Colors.brown.shade200),
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                                ) ,
                               padding: EdgeInsets.symmetric(horizontal:5,vertical:10,),
                               
                                width: 300,
     
       child: Image.asset('assets/cafeNormal.jpg',height:105,fit: BoxFit.cover,),
     ),Text('Descripción',style: TextStyle(fontSize:20.0,color: Colors.white),), Icon(Icons.arrow_upward,color: Colors.white,)  
            ]),
      ), ) 
      ],),
    ),
     Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Row(
    mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children:[
      InkWell(
        onTap: (){
         _SettingModalBottomSheel2(context);
        },
        child:
       Card(
     clipBehavior:  Clip.antiAlias,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
     margin: EdgeInsets.symmetric(horizontal:10.0),         
     color: Colors.brown.shade900,        
     child:Column(children:<Widget>[
     Container(
       decoration: BoxDecoration(
                                  //border:Border.all(width:1,color:Colors.brown.shade200),
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                                ) ,
                               padding: EdgeInsets.symmetric(horizontal:5,vertical:10,),
                               
                                width: 300,
       child: Image.asset('assets/cafearriba.jpg',height:110,fit: BoxFit.cover,),
     ),Text('¡Un buen café!',style: TextStyle(fontSize:20.0,color: Colors.white),),
            Icon(Icons.arrow_upward,color: Colors.white,) 
            ])
      ),)    
      ],),
    ),
     Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Row(
    mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children:[ 
     InkWell(
       onTap: (){
          _SettingModalBottomSheel3(context);
       },
       child:
     Card(  
       clipBehavior:  Clip.antiAlias,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
     margin: EdgeInsets.symmetric(horizontal:10.0),         
     color: Colors.brown.shade900,        
     child:Column(children:<Widget>[
     Container(
       decoration: BoxDecoration(
                                  //border:Border.all(width:1,color:Colors.brown.shade200),
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                                ) ,
                               padding: EdgeInsets.symmetric(horizontal:5,vertical:10,),
                               
                                width: 300,
       child: Image.asset('assets/miCafe.jpg',height:110,fit: BoxFit.cover,)),
       Text('Mi Café',style: TextStyle(fontSize:20.0,color: Colors.white),),
       Icon(Icons.arrow_upward,color: Colors.white,) 
            ])
          ),)
          
      ],),
    ), 
    ],
    
    
    
    
    ) ],);
}
void _SettingModalBottomSheel(context){
  showModalBottomSheet(context: context, builder: (BuildContext bc){
    return Container(
       padding: EdgeInsets.symmetric(horizontal:16),
        child: ListView(
          children: <Widget>[
            Divider(color: Colors.brown.shade500,
                thickness: 4.0,),
          Title(color: Colors.black, child: Text('Descripción.',style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,),textAlign: TextAlign.center,)),
          Divider(color: Colors.brown.shade500,
                thickness: 4.0,),
          Text('Café maragogico: a más de mil metros de altura, entre ríos, montañas y cañadas,'+
               ' se encuentra el sitio ideal para sembrar y cosechar el café perfecto. es ahí en donde nuestros'+
                ' productores cultivan desde hace décadas. es una mezcla de granos arábigos de altura seleccionados a mano,'+
                ' logrando un delicioso café artesanal, lleno de tradición; con un aroma sin igual, pronunciada'+
                ' acidez y cuerpo bien balanceado. en Bachajón la tierra huele a café, de nuestro municipio orgullo.'
                ' Cada taza de café marago es una experiencia completa de café perfecto, una experiencia del sabor de'+
                ' nuestra cultura.',style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
                Divider(),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                    Image.asset('assets/granosCafe.jpg',height: 200.0,),
                Image.asset('assets/img1.jpg',height: 200.0,)
                  ]
                ),
                Divider(),
                

          ]
        ),
    );
  },);
}
void _SettingModalBottomSheel2(context){
  showModalBottomSheet(context: context, builder: (BuildContext bc){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:16),
        child: ListView(
          children: <Widget>[

          Divider(color: Colors.brown.shade500,
                thickness: 4.0,),
          Title(color: Colors.black, child: Text('¡¡UN BUEN CAFE!!',style: TextStyle(fontSize:22.0,fontStyle: FontStyle.normal,),textAlign: TextAlign.center,)),
          Divider(color: Colors.brown.shade500,
                thickness: 4.0,),
           
          Padding(
            padding: const EdgeInsets.only(top:15.0),
            child: Title(color: Colors.black, child: Text('Ingredientes',style: TextStyle(fontSize:18.0,fontStyle: FontStyle.normal,),textAlign: TextAlign.center,)),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text('*6 cucharadas de café molido MUKULUM',style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ), Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Text('*2 varitas de canela (opcional)',style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ), Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Text('*1 y 1/2 litros de agua',style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ), Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Text('*Azúcar al gusto',style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ), Divider(color: Colors.brown.shade500,
                thickness: 1.0,),
        Title(color: Colors.black, child: Text('Paso a paso',style: TextStyle(fontSize:18.0),textAlign: TextAlign.center,)),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text('1. agregar agua en una olla, si desea colocar canela es el momento, hervir a fuego lento'
            ,style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text('2. Al momento de que suelte el hervor, agregar el café y reposa por cinco minutos'
            ,style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text('3. Pasa por un colador y sirve',style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text('Nota: la esencia del café aumenta al hervir el agua simple sin ningun otro ingrediente'
            ,style: TextStyle(fontSize: 15.0, ),textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Row(
              children: <Widget>[
                Image.asset('assets/cafeli.png',height:170.0),
              ],
            ),
          ),
              Divider(color: Colors.brown.shade500,
                thickness: 1.0,),
          Title(color: Colors.black, child: Text('Por Taza',style: TextStyle(fontSize:18.0),textAlign: TextAlign.justify,)),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                    Image.asset('assets/cafe2.jpg',height: 200.0,),
                //Image.asset('assets/img1.jpg',height: 200.0,)
                  ]
                ),
                Divider(),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                    Image.asset('assets/cafe1.jpg',height: 200.0,),
                //Image.asset('assets/img1.jpg',height: 200.0,)
                  ]
                ),
                Divider(),

          ]
        ),
    );
  },);
}
void _SettingModalBottomSheel3(context){
  showModalBottomSheet(context: context, builder: (BuildContext bc){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20,vertical:20 ),
        child: ListView(
          children: <Widget>[
         Divider(color: Colors.brown.shade500,
                thickness: 4.0,height:10,endIndent: 30,indent: 30,),
          Title(color: Colors.black, child: Text('MI CAFE',style: TextStyle(fontSize:20.0,fontStyle: FontStyle.normal,),textAlign: TextAlign.center,)),
         Divider(color: Colors.brown.shade500,
                thickness: 4.0,),
          Text('¡Soy Mukulum!',style: TextStyle(fontSize: 15.0,color:Colors.blue ),textAlign: TextAlign.justify,),
                Divider(),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                   Image.network('https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/83286948_2668742473174429_7744842000611934208_n.jpg?_nc_cat=105&_nc_sid=8bfeb9&_nc_eui2=AeFLt49znbnHE5S0Nw-GXxOcxThcpDNgX8nFOFykM2Bfyfir-u41BXnTfHwVPeZoXz6OEVbXZmh3oraeYDTCeu9r&_nc_ohc=EZg2MI8OZqsAX_YN2o-&_nc_ht=scontent-dfw5-1.xx&oh=819f8ba1a3ef8781cb48e5e5d6479d2f&oe=5EEEC86A'
                   ,height: 200.0,),
                  ]
                ),
                Divider(),
                Row(mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                 Flexible(child: 
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Text('Como alguien dijo una vez, una taza de café está llena de ideas.'+
                          'Y sino que les pregunten a filósofos, músicos, artistas, políticos, escritores…'+
                           'La mayoría de ellos le han dedicado una frase a su mayor aliado, el café.',
                          textAlign: TextAlign.justify,),
                    ),
                 ),
                  Image.network('https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/83514449_2666931956688814_3899672688058171392_o.jpg?_nc_cat=107&_nc_sid=8bfeb9&_nc_eui2=AeGz5uRKhmo9gFEG_ZIzPM5NJXRe7hTsVeEldF7uFOxV4YsrRoMmHa9d-KwHYRI5joO0-F5NoH5rh3OSMnV1E5B3&_nc_ohc=JFCBciMexHkAX8dKPrf&_nc_ht=scontent-dfw5-2.xx&oh=0ca7c2725c40d09bdedd3240581fd30c&oe=5EED6DFA'
                  ,height:200.0)
                ],),Divider(),
                Row(children: <Widget>[
                
                 Center(
                   child: IconButton(icon: Icon(FontAwesomeIcons.facebook,size: 40,), 
                   onPressed: (){
                     showDialog(context: context,builder: (context)=>AlertDialog(
                                 
                                  
        content: WebView(
          initialUrl: 'https://www.facebook.com/cafemukulum',
          javascriptMode: JavascriptMode.unrestricted,
        ),actions: <Widget>[
          InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(Icons.close),
                                backgroundColor: Colors.red,
                              ),
                            ),
                        
        ],
        ));
                    
                   }),
                 ),Text('  @cafemukulum',style: TextStyle(color:Colors.blue,fontSize: 18),)
                ],

                ),Divider(),

          ]
        ),
    );
  },);
}

}