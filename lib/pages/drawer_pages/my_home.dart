// ignore_for_file: camel_case_types, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/bottom_navigat.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/pages/register_pages/add_accunt.dart';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottom_navigat_home_page(),
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const hady_bar_page(
            titel_hady_bar: "Hoopa Home",
            font_size: 20.0,
            font_weight: FontWeight.normal,
            icon_hady_bar: button_setting(
              go_to_seetting_page: "person_setting",
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5000.0),
              image: const DecorationImage(
                image: AssetImage("icons/user_photo.jpg"),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0.0, 20.0),
                  blurRadius: 50.0,
                  color: mood_app
                      ? DShadow_color.withOpacity(0.23)
                      : LShadow_color.withOpacity(0.23),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${ferst_name.text} ${last_name.text}",
                  style: TextStyle(
                    color: mood_app ? Dtext_color : Ltext_color,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: mood_app ? DBG_color : LBG_color,
                    borderRadius: BorderRadius.circular(30.0),
                    backgroundBlendMode: BlendMode.colorDodge,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 20.0),
                        blurRadius: 50.0,
                        color: mood_app
                            ? DShadow_color.withOpacity(0.23)
                            : LShadow_color.withOpacity(0.23),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.chat_outlined,
                      size: 25.0,
                      color: mood_app ? Dicon_color : Licon_color,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${email.text}",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${biography.text}",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${view_user_berthe_day} / ${View_user_barthe_month} / ${View_user_barthe_year}",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
