import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixx/constants.dart';
import 'package:netflixx/first_page.dart';
import 'package:netflixx/movie_info.dart';

void main() {
  runApp( MainApp());
}
class MainApp extends StatefulWidget{
  @override
  _MainAppState createState() =>_MainAppState();
}
class _MainAppState extends State<MainApp> {
 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("NETFLIX",style: TextStyle(color: Colors.red,fontSize: 30.0),)),
          actions: [
            Row(children: [
              IconButton(onPressed: (){
            
            }
              , icon: Icon(CupertinoIcons.search,color: kiconwhitecolor1,)),
            ],),
          ],
          leading: IconButton(onPressed: (){
            
               },
           icon: Icon(CupertinoIcons.checkmark_seal,color: kiconwhitecolor1,)),
        elevation: 10.0,
        shadowColor: kshadowcolor,
        ),
        body: Center(
          child: first_page(),
        ),
      ),
    );
  }
}
