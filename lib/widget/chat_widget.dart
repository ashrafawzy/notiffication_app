import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String? name;
  final int? massageNumber;
  final String? imageChat = ('assets/message.png');
  final String? imageAvatar = ('assets/person.png');
  final bool? imageCard;

   const ChatWidget(
      {Key? key, required this.name,
      required this.massageNumber,
      required this.imageCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        color: Color(0xFFFAFAFA),
        // height: 80,
        // width: 326,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 1,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black26,
                    width: 1.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 24.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundImage: (imageCard!
                        ? AssetImage(imageAvatar!)
                        : AssetImage(imageChat!)),
                    radius: 10.0,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: RichText(
                    text: TextSpan(
                      text: 'Chat from',
                      // Here is the explicit parent TextStyle
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '$name,',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                        TextSpan(
                            text: '$massageNumber',
                            style:
                                const TextStyle(fontSize: 12, color: Colors.red)),
                        const TextSpan(
                            text: 'unread messages',
                            style: TextStyle(
                                fontSize: 12, color: Colors.red)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 165,top: 13,right: 5),
                  child: const Text(
                    ' 04.30 PM ',
                    style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.normal),textAlign: TextAlign.right,
                  ),
                ), ],
            ),

          ]),
        ),
      )
    ]);
  }
}
