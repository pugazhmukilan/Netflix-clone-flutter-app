import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflixx/constants.dart';



class Info extends StatefulWidget {
  final String poster;
  final String name;

  Info({required this.poster, required this.name});
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  // Add any state variables and methods here if needed
 
 

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      backgroundColor: kpagecolor,
      
      body: SafeArea(
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    
                      Navigator.pop(context);
                    
                    
                  }, icon:Icon( CupertinoIcons.arrow_left),color: kiconwhitecolor1,
                  ),
                ],
              ),
                        Container(
              height: 500,
              width: 300,
              child: Material(
                elevation: 10, 
                shadowColor: Colors.red, // Adjust the value to control the shadow intensity
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  decoration: BoxDecoration(color: Colors.green,),
                  child: Image.asset(
                    widget.poster,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
        
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Text(widget.name,style: const TextStyle(color:Colors.white,
                      fontSize: 25.0,fontFamily: 'Ubuntu',fontWeight: FontWeight.w500),),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 200,
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: IconButton(onPressed: (){
                       showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return popup(information:"This Movie has been book marked");
                          },
                        );           
                     }, icon: Icon(CupertinoIcons.bookmark_fill, color: Colors.red,size: 45,),
                   ),),
                    ]
                    ),
              ),
              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 10,shadowColor: kshadowcolor,backgroundColor: Colors.red),
                    
                    onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return popup(information:"The Movie is playing now");
                          },
                        );
                        
                      }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.play_arrow_solid,color: Colors.white,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Play",style: TextStyle(fontFamily: "Ubuntu",fontWeight: FontWeight.w400,fontSize: 25),)
                    ],
                  )),
                ),
              )
             
            ],
          ),
        ),
      ),
    );
  }
}

class popup extends StatelessWidget {
  final String information;
  popup({required this.information});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("$information"),
      elevation: 20,
      // You can set the shadowColor directly inside the BoxDecoration of the AlertDialog if needed.
      // For this, make sure to import the 'dart:ui' library.
      // backgroundColor: Colors.white.withOpacity(0.5),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      // shadowColor: kshadowcolor,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // To close the dialog
          },
          child: Text("OK"),
        ),
      ],
    );
  }
}
