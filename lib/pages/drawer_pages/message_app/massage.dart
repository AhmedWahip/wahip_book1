// ignore_for_file: camel_case_types, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/bottom_navigat.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class message_app extends StatefulWidget {

  @override
  State<message_app> createState() => _message_appState();
}

class _message_appState extends State<message_app>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      bottomNavigationBar: bottom_navigat_massge_page(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const hady_bar_page(
              /// Hady Bar Page Widget mack To Hopa Book App Devolper ;
              /// Hady Bar Page On All The Pages Hopa Book ;
              /// (src) => lib\Widget\haders_bar.dart ;
              ///  -----importent-----
              /// Hady Bar Page Have To =>
              /// 1 - Var On Type String => titel_hady_bar ;
              /// 2 - Var On Type Widget => go_to_seetting_page = button_setting() Or button_halp();

              titel_hady_bar: "Hoopa Massage",
              icon_hady_bar: button_setting(
                go_to_seetting_page: "massage_setting",
              ),
              font_size: 20.0,
              font_weight: FontWeight.normal,
            ),
            MaterialButton(
              onPressed: () {
                /// Button Navigator To The Chat Screen ;
                /// (src) => lib\pages\drawer_pages\message_app\massege_splash_scren.dart ;

                Navigator.of(context).pushNamed("chat_screen");
              },
              child: ListTile(
                leading: const CircleAvatar(
                  foregroundImage: AssetImage(
                    "icons/user_photo.jpg",
                  ),
                  backgroundColor: Color(0x3CFFFFFF),
                ),
                title: Text(
                  "user hoopa app",
                  style: TextStyle(
                    color: mood_app ? Dtext_color : Ltext_color,
                  ),
                ),
                subtitle: Text(
                  "masseg",
                  style: TextStyle(
                    color: mood_app ? Dtext_color : Ltext_color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
