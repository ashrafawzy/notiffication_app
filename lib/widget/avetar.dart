import 'package:flutter/material.dart';

class Card_Widget extends StatelessWidget {
  final String? name;
  final String? product_name;
  final String? Image_Chat = ('assets/message.png');
  final String? Image_Avatar = ('assets/person.png');
  final bool? Image_Card;

  const Card_Widget({
    required this.name,
    required this.product_name,
    required this.Image_Card,
  });

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
                  CircleAvatar(
                    foregroundImage: (Image_Card!
                        ? AssetImage(Image_Avatar!)
                        : AssetImage(Image_Chat!)),
                    radius: 22,
                    backgroundColor: Colors.white70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: RichText(
                      text: TextSpan(
                        text: 'A new offer from ',
                        // Here is the explicit parent TextStyle
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '$name ',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.red)),
                          TextSpan(
                              text: 'for ',
                              style: new TextStyle(
                                  fontSize: 14, color: Colors.black)),
                          TextSpan(
                            text: '\n $product_name',
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
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
