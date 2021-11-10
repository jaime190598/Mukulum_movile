import 'package:Mukulum/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  int cafe1=0;
  int cafe2=0;
  int cafe3=0;
  int cafe4=0;
  double precio1=180.00;
   double precio2=100.00;
    double precio3=60.00;
     double precio4=250.00;
  double tot1=0;
  double tot2=0;
  double tot3=0;
  double tot4=0;
  double totalfin=0;
  String nombre1='Café tostado Clasico   1kg';
  String cod1='cf235';
  String nombre2='Café tostado Clasico 1/2kg';
  String cod2='cf65';
  String nombre3='Café tostado Clasico 1/4kg';
  String cod3='cf64';
  String nombre4='Café tostado Maragogico 1kg';
  String cod4='cf985';
   String imgcafe1='assets/cafetostado.jpg';
   String imgcafe2='assets/clasico.jpg';
   String imgcafe3='assets/clasico2.jpg';
   String imgcafe4='assets/cafetostado.jpg';
 
class Products extends StatelessWidget{
  final String user;
final String email;
  Products({Key key, @required this.user,@required this.email}): super(key: key);
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
       title: 'MUKULUM',
      debugShowCheckedModeBanner: false,
      color: Colors.brown[300],
      home: Product(user: user,email: email,),      
      );
  }

 }
 class Product extends StatefulWidget{
   final String user;
final String email;
  Product({Key key, @required this.user,@required this.email}): super(key: key);
   @override 
   Compras createState() => Compras(user: user,email: email,);
 }
class Compras extends State<Product> {
 final String user;
final String email;
Compras({Key key, @required this.user,@required this.email});
  
 void _incrementCounter(){
   setState(() {
     if(cafe1<=9){
     cafe1++;
    
     print(tot1);
     }
   });
 } void _incrementCounter2(){
   setState(() {
     if(cafe2<9){
     cafe2++;}
   });
 }
  void _incrementCounter3(){
   setState(() {
     if(cafe3<9){
     cafe3++;}
   });
 }
  void _incrementCounter4(){
   setState(() {
     if(cafe4<9)
     cafe4++;
   });
 }
  void _decrementCounter(){
   setState(() {
     if(cafe1!=0)
     cafe1--;
   });
 } void _decrementCounter2(){
   setState(() {
     if(cafe2!=0)
     cafe2--;
   });
 }
  void _decrementCounter3(){
   setState(() {
     if(cafe3!=0)
     cafe3--;
   });
 }
  void _decrementCounter4(){
   setState(() {
     if(cafe4!=0)
     cafe4--;
   });
 }
  void _null(){
   setState(() {
     cafe1=0;
      cafe2=0;
       cafe3=0;
        cafe4=0;
        tot1=0;
        tot2=0;
        tot3=0;
        tot4=0;
   });
 }
 void _car1(){
   setState(() {
      showDialog(context: context,builder: (context)=>AlertDialog(
                               title: Center(child: Text(nombre1,textAlign: TextAlign.center,)),
                                
                                content: SingleChildScrollView(
                                  
                                  child: Column(children: <Widget>[
                                   
                                    Center(child: Image.asset(imgcafe1)),
                                    Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[

                                FlatButton(
                                  shape: CircleBorder(),
                                  color: Colors.brown.shade400,
                                   child: Center(child: IconButton(icon:Icon(Icons.add,color: Colors.white,size: 35.0,), onPressed: null)),
                                   onPressed:(){
                                     _incrementCounter();
                                     Navigator.pop(context);
                                      _car1();
                                      total1();
                                                                              
                                   }
                                 ),Padding(
                                   padding: const EdgeInsets.only(left:5.0,right: 5.0),
                                   child: Container(child: Text("-$cafe1-",style: TextStyle(fontSize:25.0,color:Colors.black,decoration: TextDecoration.underline),textAlign: TextAlign.center,),
                                ),
                                 ),
                                 FlatButton(
                                    shape: CircleBorder(),
                                   color: Colors.brown.shade400,
                                   child:Center(child: IconButton(icon:Icon(Icons.remove,color: Colors.white,size: 35.0,), onPressed: null)),
                                   onPressed:(){

                                      _decrementCounter();
                                      Navigator.pop(context);
                                      _car1();
                                      total1();
                                   }
                                 ),                                
                                 ]),                                                            
                                 ),
                                 Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                   Text('Total: $tot1')
                                 ],), Divider(),
                                                                  
                                  ],),
                                  
                                ),actions: <Widget>[
                                   MaterialButton(
                                    minWidth: 100,
                                     height: 35,
                                     color: Colors.brown.shade400,
                                     child: Text('Aceptar'),
                                     onPressed:(){
                                           Navigator.pop(context);
                                     }
                                   ),
                                   FlatButton(
                                   
                                   color: Colors.brown.shade400,
                                   child: Text('Cancelar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ),
                                 
                                ],
                               elevation:24.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
   });
 }
  void _car2(){
   setState(() {
       showDialog(context: context,builder: (context)=>AlertDialog(
                               title: Center(child: Text(nombre2,textAlign: TextAlign.center,)),
                                
                                content: SingleChildScrollView(
                                  child:Column(children: <Widget>[
                                   
                                    Center(child: Image.asset(imgcafe2)),
                                    Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
                                      child: Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                  children:<Widget>[
                                FlatButton(
                                  shape: CircleBorder(),
                                  color: Colors.brown.shade400,
                                   child: IconButton(icon:Icon(Icons.add,color: Colors.white,size: 35.0,), onPressed: null),
                                   onPressed:(){
                                        _incrementCounter2();
                                      Navigator.pop(context);
                                      _car2();
                                      total2();
                                   }
                                 ),Padding(
                                   padding: const EdgeInsets.only(left:5.0,right: 5.0),
                                   child: Container(child: Text("-$cafe2-",style: TextStyle(fontSize:25.0,color:Colors.black,decoration: TextDecoration.underline),textAlign: TextAlign.center,),
                                ),
                                 ),
                                 FlatButton(
                                    shape: CircleBorder(),
                                   color: Colors.brown.shade400,
                                   child:IconButton(icon:Icon(Icons.remove,color: Colors.white,size: 35.0,), onPressed: null),
                                   onPressed:(){
                                         _decrementCounter2();
                                         Navigator.pop(context);
                                      _car2();
                                      total2();
                                   }
                                 ),                                
                                 ]),),
                                 Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                   Text('Total: $tot2')
                                 ],), Divider(),
                                                                   
                                  ],)
                                ),
                                actions: <Widget>[
                                   MaterialButton(
                                    minWidth: 100,
                                     height: 35,
                                     color: Colors.brown.shade400,
                                     child: Text('Aceptar'),
                                     onPressed:(){
                                           Navigator.pop(context);
                                     }
                                   ),
                                   FlatButton(
                                   
                                   color: Colors.brown.shade400,
                                   child: Text('Cancelar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ),
                                ],
                               elevation:24.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
   });
 }
  void _car3(){
   setState(() {
     showDialog(context: context,builder: (context)=>AlertDialog(
                               title: Center(child: Text(nombre3,textAlign: TextAlign.center,)),
                                
                                content: SingleChildScrollView(
                                  child: Column(children: <Widget>[
                                
                                    Center(child: Image.asset(imgcafe3)),
                                    Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
                                      child: Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                        children:<Widget>[
                                FlatButton(
                                  shape: CircleBorder(),
                                  color: Colors.brown.shade400,
                                   child: IconButton(icon:Icon(Icons.add,color: Colors.white,size: 35.0,), onPressed: null),
                                   onPressed:(){
                                         _incrementCounter3();
                                         Navigator.pop(context);
                                         _car3();
                                         total3();
                                   }
                                 ),Padding(
                                   padding: const EdgeInsets.only(left:5.0,right: 5.0),
                                   child: Container(child: Text("-$cafe3-",style: TextStyle(fontSize:25.0,color:Colors.black,decoration: TextDecoration.underline),textAlign: TextAlign.center,),
                                ),
                                 ),
                                 FlatButton(
                                    shape: CircleBorder(),
                                   color: Colors.brown.shade400,
                                   child:IconButton(icon:Icon(Icons.remove,color: Colors.white,size: 35.0,), onPressed: null),
                                   onPressed:(){
                                        _decrementCounter3();
                                         Navigator.pop(context);
                                         _car3();
                                         total3();
                                   }
                                 ),                                
                                 ]),),
                                 Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                   Text('Total: $tot3')
                                 ],), Divider(),
                                                                   
                                  ],)
                                ),actions: <Widget>[
                                  MaterialButton(
                                    minWidth: 100,
                                     height: 35,
                                     color: Colors.brown.shade400,
                                     child: Text('Aceptar'),
                                     onPressed:(){
                                           Navigator.pop(context);
                                     }
                                   ),
                                   FlatButton(
                                   
                                   color: Colors.brown.shade400,
                                   child: Text('Cancelar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ),
                                ],
                               elevation:24.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
     
   });
 }
  void _car4(){
   setState(() {
     showDialog(context: context,builder: (context)=>AlertDialog(
                               title: Center(child: Text(nombre4,textAlign: TextAlign.center,)),
                                
                                content: SingleChildScrollView(
                                  child:Column(children: <Widget>[
                                   
                                    Center(child: Image.asset(imgcafe4)),
                                    Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:<Widget>[
                                FlatButton(
                                  shape: CircleBorder(),
                                  color: Colors.brown.shade400,
                                   child: IconButton(icon:Icon(Icons.add,color: Colors.white,size: 35.0,), onPressed: null),
                                   onPressed:(){
                                          _incrementCounter4();
                                          Navigator.pop(context);
                                          _car4();
                                          total4();
                                        
                                   }
                                 ),Padding(
                                   padding: const EdgeInsets.only(left:5.0,right: 5.0),
                                   child: Container(child: Text("-$cafe4-",style: TextStyle(fontSize:25.0,color:Colors.black,decoration: TextDecoration.underline),textAlign: TextAlign.center,),
                                ),
                                 ),
                                 FlatButton(
                                    shape: CircleBorder(),
                                   color: Colors.brown.shade400,
                                   child:IconButton(icon:Icon(Icons.remove,color: Colors.white,size: 35.0,), onPressed: null),
                                   onPressed:(){
                                       _decrementCounter4();
                                        Navigator.pop(context);
                                          _car4();
                                          total4();
                                   }
                                 ),                                
                                 ]),),
                                 Divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                   Text('Total: $tot4')
                                 ],), Divider(),
                                                                 
                                  ],)
                                ),actions: <Widget>[
                                  MaterialButton(
                                    minWidth: 100,
                                     height: 35,
                                     color: Colors.brown.shade400,
                                     child: Text('Aceptar'),
                                     onPressed:(){
                                           Navigator.pop(context);
                                     }
                                   ),
                                   FlatButton(
                                   
                                   color: Colors.brown.shade400,
                                   child: Text('Cancelar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ),
                                ],
                               elevation:24.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
     
   });
 }
 void _carrito(int totaCarrito){
   setState(() {
     showDialog(context: context,builder: (context)=>AlertDialog(
                               title: Center(child: Text('Mi carrito de compras',textAlign: TextAlign.center,)),
                                
               content: SingleChildScrollView(
               child: DataTable(
                horizontalMargin: 0.0,
                columnSpacing: 40.0,
                columns:<DataColumn> [
                  DataColumn(label: Text('COD.')),
                  DataColumn(label: Text("CAN.")),
                  DataColumn(label: Text("TOTAL")),
                  
                ],
                rows:<DataRow> [
                  if(cafe1!=0)
                  DataRow(cells: [
                    DataCell(Text(cod1)),
                    DataCell(Text("$cafe1")),
                    DataCell(Text(tot1.toStringAsFixed(2)))
                  ]),
                  if(cafe2!=0)
                  DataRow(cells: [
                    DataCell(Text(cod2)),
                    DataCell(Text("$cafe2")),
                    DataCell(Text(tot2.toStringAsFixed(2)))
                  ]),
                  if(cafe3!=0)
                  DataRow(cells: [
                    DataCell(Text(cod3)),
                    DataCell(Text("$cafe3")),
                    DataCell(Text(tot3.toStringAsFixed(2)))
                  ]),
                  if(cafe4!=0)
                  DataRow(cells: [
                    DataCell(Text(cod4)),
                    DataCell(Text("$cafe4")),
                    DataCell(Text(tot4.toStringAsFixed(2))),
                    
                  ]),
                  DataRow(cells: [
                    DataCell(Text("TOTAL")),
                    DataCell(Text("")),
                    DataCell(Text(totalfin.toStringAsFixed(2),style: TextStyle(color:Colors.blue),))
                  ]),
                  
                 
                ],                                  )
                ),actions: <Widget>[
                                  if(totaCarrito!=0)
                                  FlatButton(
                                   color: Colors.brown.shade400,
                                   child: Icon(Icons.send),
                                   onPressed:(){
                                        Navigator.pop(context);
                                       showDialog(context: context,builder: (context)=>AlertDialog(
                                  title: Center(child: Text('Se ha enviado a:',textAlign: TextAlign.center,)),
                                 content: Text(email+' tu ticket de compra electronico'),actions: <Widget>[
                                   FlatButton(
                                   color: Colors.brown.shade400,
                                   child: Text('Aceptar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ), 
                                ],
                               elevation:24.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
                              _null();
                                   }
                                 ),
                                   FlatButton(
                                   
                                   color: Colors.brown.shade400,
                                   child: Text('Cancelar'),
                                   onPressed:(){
                                        Navigator.pop(context);
                                   }
                                 ),
                                ],
                               elevation:24.0,
                              backgroundColor: Colors.white,
                            // shape: CircleBorder(),
                             ),barrierDismissible: false);
   });
 }
 void total1(){
   setState(() {
 tot1=cafe1.toDouble()*precio1;

   });}
   void total2(){
   setState(() {
  tot2=cafe2.toDouble()*precio2;

   });}
   void total3(){
   setState(() {
 tot3=cafe3.toDouble()*precio3;

   });}
   void total4(){
   setState(() {
  tot4=cafe4.toDouble()*precio4;

   });}

  @override
  Widget build(BuildContext context) {
    int totaCarrito=cafe1+cafe2+cafe3+cafe4;
   String caf="$totaCarrito";
  total1();
  total2();
  total3();
  total4();
  totalfin=tot1+tot2+tot3+tot4;
  
    return Scaffold(
      
         backgroundColor: Colors.white,
         appBar: PreferredSize(
           preferredSize: Size.fromHeight(55.0),
           child: AppBar(        
         centerTitle: true,backgroundColor: Colors.brown.shade700,leading: IconButton(
            icon: const Icon(Icons.arrow_back,color: Colors.white,size: 40.0,),
            tooltip: 'Retorno',
            onPressed: () {
              _null();
             Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp(user: user,email: email,)),);
            },
          ),
         title: Text('Productos') ,
         actions: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(icon: Icon(Icons.remove_shopping_cart,color: Colors.white,size: 35.0,), 
            onPressed: (){
              
                  _null();
            }
            ),
          ),
         
         ],
         
        ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal:16),
          decoration: BoxDecoration(color: Colors.white70 ),
          child: ListView(
          children:<Widget>[ Column(
            children: <Widget>[
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Card(
                      child: Column(
                      children:<Widget>[
                         Container(
                           height: 300,
                           width: 300,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:<Widget>[
                               Flexible(child: 
                                 Image.asset(imgcafe1,height: 300.0,),)
                             ]
                           ),
                         ),
                         Row(
                          //mainAxisAlignment:  MainAxisAlignment.center,
                           children: <Widget>[
                               Container(
                                width: 200,
                                 child: Column(
                                    children: <Widget>[                                     
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[   Flexible(child:                                    
                                              Text('Nombre',textAlign: TextAlign.justify,style: TextStyle(fontSize:18.0),),)
                                            ],
                                          ), Divider(),                                                      
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Flexible(child: 
                                            Text(nombre1,textAlign: TextAlign.center,),)
                                          ],
                                        ),
                                    ]
                                 ),
                               ),
                                                         
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            
                                            Text('Precio',textAlign: TextAlign.center,style: TextStyle(fontSize:18.0),),
                                          ],
                                        ),Divider(),
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.attach_money,size: 18,),
                                            Text("$precio1",textAlign: TextAlign.center,style: TextStyle(color:Colors.red,fontSize:15.0),),
                                          ],
                                        ),Divider( ),
                                    ]
                             ),
                                ),
                              
                           ],
                         ),
                         Row(children:<Widget>[
                           Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: MaterialButton(
                                 child: Text('Agregar al carrito',style: TextStyle(color: Colors.blue),),
                                 onPressed:(){
                                   _car1();
                            
                                 }),
                             ),
                             Icon(Icons.add_shopping_cart,color: Colors.blue,)
                             
                             
                             ]
                         )
                       ]
                      ),
                    ),
                  )
                ],

              ),
               Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Card(
                     child: Column(
                      children:<Widget>[
                         Container(
                           height: 300,
                           width: 300,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:<Widget>[
                               Flexible(child: 
                                 Image.asset(imgcafe2,height: 300.0,),)
                             ]
                           ),
                         ),
                         Row(
                          //mainAxisAlignment:  MainAxisAlignment.center,
                           children: <Widget>[
                               Container(
                                width: 200,
                                 child: Column(
                                    children: <Widget>[                                     
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[   Flexible(child:                                    
                                              Text('Nombre',textAlign: TextAlign.justify,style: TextStyle(fontSize:18.0),),)
                                            ],
                                          ), Divider(),                                                      
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Flexible(child: 
                                            Text(nombre2,textAlign: TextAlign.center,),)
                                          ],
                                        ),
                                    ]
                                 ),
                               ),
                                                         
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            
                                            Text('Precio',textAlign: TextAlign.center,style: TextStyle(fontSize:18.0),),
                                          ],
                                        ),Divider(),
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.attach_money,size: 18,),
                                            Text("$precio2",textAlign: TextAlign.center,style: TextStyle(color:Colors.red,fontSize:15.0),),
                                          ],
                                        ),Divider( ),
                                    ]
                             ),
                                ),
                              
                           ],
                         ),
                         Row(children:<Widget>[
                           Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: MaterialButton(
                                 child: Text('Agregar al carrito',style: TextStyle(color: Colors.blue),),
                                 onPressed:(){
                                   _car2();
                            
                                 }),
                             ),
                             Icon(Icons.add_shopping_cart,color: Colors.blue,)
                             
                             
                             ]
                         )
                       ]
                      ),
                    ),
                  )
                ],

              ),
               Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Card(
                      child: Column(
                         
                      children:<Widget>[
                         Container(
                           
                           height: 300,
                           width: 300,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:<Widget>[
                               Flexible(child: 
                                 Image.asset(imgcafe3,height: 300.0,),)
                             ]
                           ),
                         ),
                         Row(
                          //mainAxisAlignment:  MainAxisAlignment.center,
                           children: <Widget>[
                               Container(
                                width: 200,
                                 child: Column(
                                    children: <Widget>[                                     
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[   Flexible(child:                                    
                                              Text('Nombre',textAlign: TextAlign.justify,style: TextStyle(fontSize:18.0),),)
                                            ],
                                          ), Divider(),                                                      
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Flexible(child: 
                                            Text(nombre3,textAlign: TextAlign.center,),)
                                          ],
                                        ),
                                    ]
                                 ),
                               ),
                                                         
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            
                                            Text('Precio',textAlign: TextAlign.center,style: TextStyle(fontSize:18.0),),
                                          ],
                                        ),Divider(),
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.attach_money,size: 18,),
                                            Text("$precio3",textAlign: TextAlign.center,style: TextStyle(color:Colors.red,fontSize:15.0),),
                                          ],
                                        ),Divider( ),
                                    ]
                             ),
                                ),
                              
                           ],
                         ),
                         Row(children:<Widget>[
                           Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: MaterialButton(
                                 child: Text('Agregar al carrito',style: TextStyle(color: Colors.blue),),
                                 onPressed:(){
                                   _car3();
                            
                                 }),
                             ),
                             Icon(Icons.add_shopping_cart,color: Colors.blue,)
                             
                             
                             ]
                         )
                       ]
                      ),
                    ),
                  )
                ],

              ),
                            Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom: 55.0),
                    child: Card(
                      child: Column(
                      children:<Widget>[
                         Container(
                           height: 300,
                           width: 300,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:<Widget>[
                               Flexible(child: 
                                 Image.asset(imgcafe4,height: 300.0,),)
                             ]
                           ),
                         ),
                         Row(
                          //mainAxisAlignment:  MainAxisAlignment.center,
                           children: <Widget>[
                               Container(
                                width: 200,
                                 child: Column(
                                    children: <Widget>[                                     
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[   Flexible(child:                                    
                                              Text('Nombre',textAlign: TextAlign.justify,style: TextStyle(fontSize:18.0),),)
                                            ],
                                          ), Divider(),                                                      
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Flexible(child: 
                                            Text(nombre4,textAlign: TextAlign.center,),)
                                          ],
                                        ),
                                    ]
                                 ),
                               ),
                                                         
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            
                                            Text('Precio',textAlign: TextAlign.center,style: TextStyle(fontSize:18.0),),
                                          ],
                                        ),Divider(),
                                        Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(Icons.attach_money,size: 18,),
                                            Text("$precio4",textAlign: TextAlign.center,style: TextStyle(color:Colors.red,fontSize:15.0),),
                                          ],
                                        ),Divider( ),
                                    ]
                             ),
                                ),
                              
                           ],
                         ),
                         Row(children:<Widget>[
                           Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: MaterialButton(
                                 child: Text('Agregar al carrito',style: TextStyle(color: Colors.blue),),
                                 onPressed:(){
                                   _car4();
                            
                                 }),
                             ),
                             Icon(Icons.add_shopping_cart,color: Colors.blue,)
                             
                             
                             ]
                         )
                       ]
                      ),
                    ),
                  )
                ],

              ),
              
            ],

          ),]),



        ),

        floatingActionButton: Container(
         height: 80,
          width: 80,
          
          child: FloatingActionButton(
            
            backgroundColor: Colors.brown,
            onPressed: () {
              _carrito(totaCarrito);
              
            },
            child:Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(children:<Widget>[
                Text(caf),
                Icon(Icons.shopping_cart)
              ]
                
              ),
            ) ,
          ),
        ),
     
      
    );
  }
}