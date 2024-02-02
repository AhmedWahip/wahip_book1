// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/floating_action.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class notifications_page extends StatefulWidget {
  @override
  State<notifications_page> createState() => _notifications_pageState();
}

class _notifications_pageState extends State<notifications_page>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: Column(
        children: const <Widget>[
          hady_bar_page(
            titel_hady_bar: "My Notifications",
            icon_hady_bar: button_setting(
              go_to_seetting_page: "notiflcations_setting_page",
            ),
            font_size: 20.0,
            font_weight: FontWeight.bold,
          ),
          Icon(
            Icons.notifications_active,
          ),
          Text("No favorite")
        ],
      ),
      floatingActionButton: floating_action_back_button(),
    );
  }
}
