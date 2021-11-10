import 'package:Mukulum/src/pages/Album.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardAlbum extends StatelessWidget{
  Album album;
  CardAlbum(this.album);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top:10,bottom: 20),
      child: Card(
                   //  color: Colors.brown.shade400,
                        clipBehavior:  Clip.antiAlias,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        margin: EdgeInsets.symmetric(horizontal:5.0),
                        child: Row(
                          
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,                                           
                         children: <Widget>[
                           
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container( 
                                width: 90.0,
                                height: 90.0, 
                               
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(album.image),
                                ),
                              ),
                            ),
                            Center(
                              //heightFactor: 40,
                              widthFactor: 1.1,
                              child: Container(
                                decoration: BoxDecoration(
                                  //border:Border.all(width:1,color:Colors.brown.shade200),
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                                ) ,
                               padding: EdgeInsets.symmetric(horizontal:5,vertical:10,),
                               
                                width: 200,
                                child: Column(
                                    mainAxisSize : MainAxisSize . min , 
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                   Row(
                                     children: <Widget>[
                                       Flexible(child: 
                                       Text(album.name,style: TextStyle(fontSize:15),),
                                       ),
                                     ],
                                     ),Divider(),
                                      Row(
                                     children: <Widget>[
                                       
                                       Text('Telefono: '+album.telefono,style: TextStyle(fontSize:15),),
                                     ],),Divider(),
                                     Row(
                                     children: <Widget>[ 
                                      Icon(FontAwesomeIcons.facebook,size: 40,),
                                      Flexible(child: 
                                      FlatButton(onPressed: (){_SettingModalBottomSheel3(context);}, 
                                      child: Center(child: Text(album.facebook,style: TextStyle(color:Colors.blue),))))
                                     ],),
                                      Row(
                                     children: <Widget>[ 
                                      Icon(FontAwesomeIcons.instagram,size: 40,),
                                      Flexible(child: 
                                      FlatButton(onPressed: (){_SettingModalBottomSheel3(context);}, 
                                      child: Center(child: Text(album.facebook,style: TextStyle(color:Colors.blue),))))
                                     ],),
                                     
                                     

                                  ],
                                ),
                              ),
                            ),

                         ],

                        ),
                      ),
    );
  }
  void _SettingModalBottomSheel3(context){
  showModalBottomSheet(context: context, builder: (BuildContext bc){
    return ListView(
    children:<Widget>[Container(
      height: 1300,
      child:
       WebView(
          initialUrl: album.url,
          javascriptMode: JavascriptMode.unrestricted,
        ))]);
       
    
                    
                 
  },);}

}