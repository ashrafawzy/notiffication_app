import 'package:flutter/material.dart';

class Chat_Widget extends StatelessWidget {
  final String? Name;
  final int? Massage_Number;
  final String? Image_Chat = ('assets/message.png');
  final String? Image_Avatar = ('assets/person.png');
  final bool? Image_Card;

  const Chat_Widget(
      {required this.Name,
      required this.Massage_Number,
      required this.Image_Card});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        color: Color(0xFFFAFAFA),
        height: 80,
        width: 326,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 1,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        foregroundImage: (Image_Card!
                            ? AssetImage(Image_Avatar!)
                            : AssetImage(Image_Chat!)),
                        radius: 10.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 10),
                    child: RichText(
                      text: TextSpan(
                        text: 'Chat from',
                        // Here is the explicit parent TextStyle
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '$Name,',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                          TextSpan(
                              text: '$Massage_Number',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.red)),
                          TextSpan(
                              text: 'unread messages',
                              style: new TextStyle(
                                  fontSize: 12, color: Colors.red)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Row(
                children: [
                  Text(
                    ' 04.30 PM ',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ]),
        ),
      )
    ]);
  }
}
