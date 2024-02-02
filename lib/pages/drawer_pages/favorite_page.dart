// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/floating_action.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class favorite_page extends StatefulWidget {
  @override
  State<favorite_page> createState() => _favorite_pageState();
}

class _favorite_pageState extends State<favorite_page>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: Column(
        children: <Widget>[
          const hady_bar_page(
            titel_hady_bar: "My Favrite",
            icon_hady_bar: button_setting(
              go_to_seetting_page: "fovorite_setting_page",
            ),
            font_size: 20.0,
            font_weight: FontWeight.bold,
          ),
          add_the_post_on_favorite_page ? app_post : No_post_fevorite,
        ],
      ),
      floatingActionButton: floating_action_back_button(),
    );
  }
}
