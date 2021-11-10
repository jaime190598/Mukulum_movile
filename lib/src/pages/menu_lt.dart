

import 'package:Mukulum/main.dart';
import 'package:Mukulum/src/pages/Cuentas_mk.dart';
import 'package:flutter/material.dart';
String usuario='';
String correo='';
String mensaje='';
class MenuLt extends StatelessWidget {
   final String user;
   final String email;
 const  MenuLt({Key key, @required this.user,@required this.email}): super(key: key);

  @override
  Widget build(BuildContext context) {
   
      if(user!=null){
        usuario=user;
      }else{
        usuario='';
      }
      if(email!=null){
        correo=email;
      }else{
        correo='';
      }
  
    return Drawer(
       
       child: NewCard());
    }
  }
  class NewCard extends StatefulWidget {
    @override
   _Crear createState() => _Crear();
   
 }
 class _Crear extends State<NewCard>{
     TextEditingController controllerMensaje= new TextEditingController();
void mensaje(){
setState(() {
   showDialog(context: context,builder: (context)=>AlertDialog(
    
         title: Text('Enviar Mensaje'),
        content:Container(
          decoration: BoxDecoration(borderRadius:BorderRadius.all(new Radius.circular(32.0))),
          width: 100,
          height:210,
          child: ListView(children: <Widget>[
        
                  TextField(
                    controller: controllerMensaje,
                    maxLines: 6,
                    autocorrect: true,
                    decoration:InputDecoration(
                      border:OutlineInputBorder(),                   
                      //icon:  Icon(Icons.create),
                     // hintText:'please enter'
                    )
                  ),Row(children: <Widget>[
                  FlatButton(onPressed: (){
              if(controllerMensaje.text!=''){
               print(mensaje);
               controllerMensaje.text='';
               
               Navigator.pop(context);
               mensaje2();
               
               }else{
                 print('error');
               }
             }, child: Icon(Icons.send)),
             FlatButton(onPressed: (){
               Navigator.pop(context);
             }, child: Icon(Icons.cancel))],)
          ],),
          ),
        ));

});

}
void mensaje2(){
setState(() {
   showDialog(context: context,builder: (context)=>AlertDialog(
         //title: Text(''),
         
        content:Container(
          //color: Colors.brown.shade200,
          decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(32.0))),
          width: 50,
          height:95,
          child: Column(
            
            children: <Widget>[
            
           Text('!Mensaje Enviando¡',style: TextStyle(color:Colors.brown),),
           Icon(Icons.check,color: Colors.blue,),
          RaisedButton(
             
             child: Text('Aceptar'),onPressed: (){
             Navigator.pop(context);
           },)
                 
          ],),
          ),
         
        ));

});

}



  @override
  Widget build(BuildContext context) {
    
    return ListView(
         
         padding: EdgeInsets.zero,
         children: <Widget>[ 
           
           UserAccountsDrawerHeader(
           
             arrowColor: Colors.brown,
             accountName: Text(usuario),
          accountEmail: Text(correo),
          decoration: BoxDecoration(
           
            image: DecorationImage(image: AssetImage('assets/cafeNormal.jpg',),fit: BoxFit.cover),
         
         ),
           currentAccountPicture  : CircleAvatar(
             child: Image(image: AssetImage('assets/mukul.jpg'), ), 
           // backgroundImage: NetworkImage('https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/40337350_1815564165158935_5242984895986270208_n.jpg?_nc_cat=108&_nc_sid=85a577&_nc_eui2=AeE06kcEn1xJl-oCSzA8CBmD2MMUNVU4IODYwxQ1VTgg4NtunjbMoNLdc2Sl8YhSTpx1pvFxihN9USSjpOBXVMcZ&_nc_ohc=R01XLUmZx1EAX8v6Avk&_nc_ht=scontent-dfw5-2.xx&oh=685fcb71fb5169d9f5edb3e35838c3e4&oe=5EC225D2'),
          ),
        ),
        
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Enviar Mesaje'),
          onTap: (){
            if(usuario!='')
             mensaje();
          },
        ),
        Divider(
         
        ),
        
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Salir'),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp(user: null,email: null,)));
          },
        ),
      ],
    );
  }


 }