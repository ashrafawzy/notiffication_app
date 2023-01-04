import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';
 class Card_Widget extends StatelessWidget{
final String? name;
final String? product_name;
final String? avetar_image ;


  const Card_Widget( {required this.name,required this.product_name,required this.avetar_image});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(

          color: Color(0xFFFAFAFA),
      height: 95,
        width: 356,

      child:  Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        elevation: 1,
        child: Column(
          children: [
            Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('$avetar_image'),
                    radius: 30,
                    backgroundColor: Colors.white70,

                  ),

     Padding(
       padding: const EdgeInsets.only(left: 15,bottom: 3),
       child: RichText(
        text: TextSpan(text: 'A new offer from',
    // Here is the explicit parent TextStyle
    style:  TextStyle(
      fontSize: 14.0,
      color: Colors.black,

    ),
    children: <TextSpan>[
       TextSpan(text: '$name',style: TextStyle(fontSize: 14,color: Colors.red)),
      TextSpan(text: 'for', style: new TextStyle(fontSize: 14,color: Colors.black)),

      TextSpan(text: '\n $product_name',style: TextStyle(fontSize: 14,color: Colors.red),

      ),


     ],

        ),
       ),

     ),


                ],
    ),

       Padding(
         padding: const EdgeInsets.only(right: 8),
         child: Row(mainAxisAlignment: MainAxisAlignment.end,
           children:[
             Text(' 04.30 PM',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),

           ]

         ),
       ) ],
        ),

      ),

      ),


    ]);

  }
}