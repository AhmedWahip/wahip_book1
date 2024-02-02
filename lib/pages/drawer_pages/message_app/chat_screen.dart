// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class chat_screen extends StatefulWidget {
  @override
  State<chat_screen> createState() => _chat_screenState();
}

class _chat_screenState extends State<chat_screen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      appBar: AppBar(
        backgroundColor: mood_app ? Ddrawer_color : Ldrawer_color,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              child: Icon(
                Icons.person_outline,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "user hoopa app",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: mood_app ? Dicon_color : Licon_color,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: mood_app ? Ddrawer_color : Ldrawer_color,
                    width: 2.0,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      // controller: ,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        hintText: "Write your Massage Here ...",
                        hintStyle: TextStyle(
                          color: mood_app ? Dtext_color : Ltext_color,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style: TextStyle(
                        color: mood_app ? Ddrawer_color : Ldrawer_color,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
