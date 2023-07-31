
import 'poster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixx/constants.dart';


class first_page  extends StatefulWidget {
  @override
  State createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor:  kpagecolor,
        body:
         SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),

              subtitle(title: "Horror Movies",),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                  movieposter(poster:'images/horror/h1.jpeg',name:"The Conjuring"),
                  movieposter(poster:'images/horror/h2.jpeg',name:"Witch"),
                  movieposter(poster:'images/horror/h3.jpeg',name:"Us"),
                  movieposter(poster:'images/horror/h4.jpeg',name:"Incious"),
                  movieposter(poster:'images/horror/h5.jpeg',name:"Jack Jill"),
                  movieposter(poster:'images/horror/h6.jpeg',name:"Nun"),
                  movieposter(poster:'images/horror/h7.jpeg',name:"Annabelle"),
                  more_button(),
                  ],
                ),
              ),
              subtitle(title: "Series",),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                  movieposter(poster:'images/series/s1.jpeg',name:"Moon Kinght"),
                  movieposter(poster:'images/series/s2.jpeg',name:"The Falcon and \nwinter soldier"),
                  movieposter(poster:'images/series/s3.jpeg',name:"Loki"),
                  movieposter(poster:'images/series/s4.jpeg',name:"MS Marvel"),
                  movieposter(poster:'images/series/s5.jpeg',name:"Wanda Vision"),
                  movieposter(poster:'images/series/s6.jpeg',name:"Inhumans"),
                  movieposter(poster:'images/series/s7.jpeg',name:"Seceret Invasion"),
               
                  more_button(),
                 
                  ],
              ),
              ),

              subtitle(title: "Tamil Movies",),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  movieposter(poster:'images/tamil/t1.jpeg',name:"Hero"),
                  movieposter(poster:'images/tamil/t2.jpeg',name:"Mater"),
                  movieposter(poster:'images/tamil/t3.jpeg',name:"Kaathuvaakula rendu kadhal"),
                  movieposter(poster:'images/tamil/t4.jpeg',name:"Master"),
                  movieposter(poster:'images/tamil/t5.jpeg',name:"Karnan"),
                  movieposter(poster:'images/tamil/t6.jpeg',name:"Vaathi"),
                  movieposter(poster:'images/tamil/t7.jpeg',name:"Pattas"),
                  more_button(),
                  ],
                ),
              ),


              subtitle(title: " Marvel Movies",),
              SingleChildScrollView(
                
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  movieposter(poster:'images/action/act1.jpeg',name: "Avengers: Infinity war"),
                  movieposter(poster:'images/action/act2.jpeg',name:"Ant-Man"),
                  movieposter(poster:'images/action/act3.jpeg',name:"Black Widow"),
                  movieposter(poster:'images/action/act4.jpeg',name:"Captian Marvel"),
                  movieposter(poster:'images/action/act5.jpeg',name:"Doctor Strange"),
                  movieposter(poster:'images/action/act6.jpeg',name:"Spider Man:far from home"),
                  movieposter(poster:'images/action/act7.jpeg',name:"Civil War"),
                  more_button(),
                  ],
                ),
              ),
            ],
          )
          
           
           
          
         )),
);       
  }
}

class more_button extends StatelessWidget {
  const more_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
     print("nothing");
                    }, icon: Icon(CupertinoIcons.arrow_right_circle_fill,),color: Color.fromARGB(255, 43, 43, 43),iconSize: 30,);
  }
}

class subtitle extends StatelessWidget {
  final String title;
  subtitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
      child: Text("$title",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}

