import 'dart:core';

import 'package:flutter/material.dart';
import 'package:notification_app/widget/Chat_Widget.dart';
import 'package:notification_app/widget/avetar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          toolbarHeight: 80,
          centerTitle: true,
          title: Column(
            children: const [
              Text(
                'Notification',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today',style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Clear',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
          ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(

                children: const [

                  CardWidget(
                    productName: 'photos',
                    name: 'Omar Nasser',
                    imageCard: true,
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  ChatWidget(
                    massageNumber: 12,
                    name: 'Omar Nasser',
                    imageCard: false,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardWidget(
                    productName: 'photos',
                    name: 'Omar Nasser',
                    imageCard: true,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ChatWidget(
                    massageNumber: 12,
                    name: 'Omar Nasser',
                    imageCard: false,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
