import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';
class Chat_Widget extends StatelessWidget{
  final String? name;
  final int? Massage_Number;
  final String? chat_image ;


  const Chat_Widget( {required this.name,required this.Massage_Number,required this.chat_image});


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
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 7),

                          child: CircleAvatar(radius: 26,
                            backgroundColor: Colors.white,
                            child: Image.asset('$chat_image'),
                          ),
                        ),


                      Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 3),
                        child: RichText(
                          text: TextSpan(text: 'Chat from',
                            // Here is the explicit parent TextStyle
                            style:  TextStyle(
                              fontSize: 13.0,
                              color: Colors.black,

                            ),
                            children: <TextSpan>[
                              TextSpan(text: '$name,',style: TextStyle(fontSize: 13,color: Colors.black)),
                          TextSpan(text:'$Massage_Number',style: TextStyle(fontSize: 13,color: Colors.red)),
                              TextSpan(text: 'unread messages.', style: new TextStyle(fontSize: 13,color: Colors.red))

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