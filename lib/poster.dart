import 'package:flutter/material.dart';
import 'package:netflixx/constants.dart';
import 'movie_info.dart';

class movieposter extends StatelessWidget {
  final String poster;
  final String name;
  movieposter({required this.poster,required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: 160,
            height: 190,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Info(
                  poster: poster,
                  name: name,
                  
                )));
              },
             
            
            style:
            ElevatedButton.styleFrom(backgroundColor: kpagecolor,
            
            ),
              child: 
                  Image.asset('$poster', fit: BoxFit.fitWidth,),
                 
                
              ),
            ),
            Center(child: Text("$name",textAlign:TextAlign.center, style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 10),)),
        ],
      ),
      
    );
  }
}