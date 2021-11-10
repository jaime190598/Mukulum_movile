import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
class Edview extends StatelessWidget {
  final String url;
   Edview({Key key,@required this.url}): super(key: key);
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
         title: Text('Sucursales') ,
          
        ),),
        body: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        
      ),
    );
  }
}
