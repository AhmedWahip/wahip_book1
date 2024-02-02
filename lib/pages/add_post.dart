// ignore_for_file: camel_case_types, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/bottom_navigat.dart';
import 'package:hoopa_book/Widget/post_folder.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class add_photo_post extends StatefulWidget {
  @override
  State<add_photo_post> createState() => _add_photo_postState();
}

class _add_photo_postState extends State<add_photo_post>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1 - 30.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 10.0),
                        blurRadius: 50.0,
                        color: Colors.black.withOpacity(0.23),
                        // color: Colors.black.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    controller: titel_post,
                    decoration: const InputDecoration(
                      hintText: "Post....!",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: "",
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.post_add,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1 - 30.0,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 10.0),
                        blurRadius: 50.0,
                        color: Colors.black.withOpacity(0.23),
                        // color: Colors.black.withOpacity(0.23),
                      ),
                    ],
                    gradient: const LinearGradient(
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
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_photo_alternate_outlined,
                        size: 35.0,
                        color: mood_app ? Dicon_color : Licon_color,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      width: 0.5,
                    ),
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: const Color(0xFFFFFFFF),
                    onPressed: () {
                      setState(() {
                        app_post = const container_photo_boost();
                      });
                      Navigator.of(context).pushNamed("mother_class");
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              // color: Textcolor,
                              size: 20.0,
                            ),
                          ),
                          Text(
                            "Post",
                            style: TextStyle(
                              // color: Textcolor,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottom_navigat_post_page(),
    );
  }
}

class add_text_post extends StatefulWidget {
  @override
  State<add_text_post> createState() => _add_text_postState();
}

class _add_text_postState extends State<add_text_post>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1 - 30.0,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 10.0),
                        blurRadius: 50.0,
                        color: Colors.black.withOpacity(0.23),
                        // color: Colors.black.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    controller: titel_post,
                    decoration: const InputDecoration(
                      hintText: "Post....!",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: "",
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.post_add,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      width: 0.5,
                    ),
                  ),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: const Color(0xFFFFFFFF),
                    onPressed: () {
                      setState(() {
                        app_post = const container_text_post();
                      });
                      Navigator.of(context).pushNamed("mother_class");
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              // color: Textcolor,
                              size: 20.0,
                            ),
                          ),
                          Text(
                            "Post",
                            style: TextStyle(
                              // color: Textcolor,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottom_navigat_post_page(),
    );
  }
}
