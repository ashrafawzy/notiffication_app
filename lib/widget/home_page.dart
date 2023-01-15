import 'dart:core';

import 'package:flutter/material.dart';
import 'package:notification_app/widget/Chat_Widget.dart';
import 'package:notification_app/widget/avetar.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Today',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          toolbarHeight: 133,
          centerTitle: true,
          title: Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  'Notification',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Clear',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: const [
              Card_Widget(
                product_name: 'photos',
                name: 'Omar Nasser',
                Image_Card: true,
              ),
              SizedBox(
                height: 16,
              ),
              Chat_Widget(
                Massage_Number: 12,
                Name: 'Omar Nasser',
                Image_Card: false,
              ),
              SizedBox(
                height: 16,
              ),
              Card_Widget(
                product_name: 'photos',
                name: 'Omar Nasser',
                Image_Card: true,
              ),
              SizedBox(
                height: 16,
              ),
              Chat_Widget(
                Massage_Number: 12,
                Name: 'Omar Nasser',
                Image_Card: false,
              )
            ],
          ),
        ));
  }
}
