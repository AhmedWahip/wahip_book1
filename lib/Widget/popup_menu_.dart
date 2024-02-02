// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

// Popup Menu Button Post ---->

/// Popup Menu Button Post Widget Mack Py Hopa Book Devolper ;
/// Vieo User On Container Post ;
/// Devolper (src) =>lib\Widget\post_folder.dart ;

class popup_menu_button_bost extends StatefulWidget {
  const popup_menu_button_bost({Key? key}) : super(key: key);

  @override
  State<popup_menu_button_bost> createState() => _popup_menu_button_bostState();
}

enum MenuItem_1 {
  item1,
  item2,
  item3,
  item4,
}

class _popup_menu_button_bostState extends State<popup_menu_button_bost>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.white,
      icon: Icon(
        Icons.more_vert_outlined,
        size: 30.0,
        color: mood_app ? Dicon_color : Licon_color,
      ),
      onSelected: (value) {
        if (value == MenuItem_1.item1) {
          setState(() {
            app_post = null;
            titel_post.text = "";
          });
          Navigator.of(context).pushNamed("mother_class");
        }
        //
        else if (value == MenuItem_1.item2) {
          Navigator.of(context).pushNamed("add_text_post");
        }
        //
        else if (value == MenuItem_1.item3) {
          Navigator.of(context).pushNamed("favorite_page");
          setState(() {
            add_the_post_on_favorite_page = true;
          });
        }
        //
        else if (value == MenuItem_1.item4) {
          // Navigator.of(context).pushNamed("");
        }
      },
      itemBuilder: ((context) => [
            PopupMenuItem(
              value: MenuItem_1.item1,
              child: Text(
                "Delete Post",
              ),
            ),
            PopupMenuItem(
              value: MenuItem_1.item2,
              child: Text(
                "update post",
              ),
            ),
            PopupMenuItem(
              value: MenuItem_1.item3,
              child: Text(
                "Save Post",
              ),
            ),
            PopupMenuItem(
              value: MenuItem_1.item4,
              child: Text(
                "Share Post",
              ),
            ),
          ]),
    );
  }
}
