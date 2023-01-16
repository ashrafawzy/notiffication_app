import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? name;
  final String? productName;
  final String? imageChat = ('assets/message.png');
  final String? imageAvatar = ('assets/person.png');
  final bool? imageCard;

  const CardWidget({
    required this.name,
    required this.productName,
    required this.imageCard,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        color: const Color(0xFFFAFAFA),
        // height: 80,
        // width: 326,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 1,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  foregroundImage: (imageCard!
                      ? AssetImage(imageAvatar!)
                      : AssetImage(imageChat!)),
                  radius: 24,
                  backgroundColor: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Expanded(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'A new offer from ',
                          // Here is the explicit parent TextStyle
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: '$name ',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.red)),
                            const TextSpan(
                                text: 'for ',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                            TextSpan(
                              text: '\n $productName',
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165, bottom: 5),
                        child: Text(
                          ' 04.30 PM ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
