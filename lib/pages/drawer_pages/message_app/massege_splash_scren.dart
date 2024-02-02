// ignore_for_file: camel_case_types, unused_field, use_key_in_widget_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hoopa_book/pages/drawer_pages/message_app/massage.dart';

class splash_massegs_scren extends StatefulWidget {

  @override
  State<splash_massegs_scren> createState() => _splash_screnState();
}

class _splash_screnState extends State<splash_massegs_scren> {
  bool _isVisible = false;

  _splash_screnState() {
    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => message_app(),
          ),
          ((route) => false),
        );
      });
    });
    Timer(const Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF8364),
                Color(0xFFFF6464),
                Color(0xFF3F3744),
                Color(0xFF3F3744),
              ],
              stops: [
                0.2,
                1.0,
                1.5,
                2.0,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Image.asset("icons/hoopa_book_logo.png"),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "HOPA Masseg",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Ranga-Bold",
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
