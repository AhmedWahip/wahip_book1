// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/hoopa_book.dart';
import 'package:hoopa_book/pages/add_post.dart';
import 'package:hoopa_book/pages/drawer_pages/favorite_page.dart';
import 'package:hoopa_book/pages/drawer_pages/message_app/chat_screen.dart';
import 'package:hoopa_book/pages/drawer_pages/notifications_page.dart';
import 'package:hoopa_book/pages/drawer_pages/setting/fovorite_settin.dart';
import 'package:hoopa_book/pages/drawer_pages/setting/massage_setting.dart';
import 'package:hoopa_book/pages/drawer_pages/setting/mother_setting.dart';
import 'package:hoopa_book/pages/drawer_pages/setting/notiflcations_setting.dart';
import 'package:hoopa_book/pages/drawer_pages/setting/person_setting.dart';
import 'package:hoopa_book/pages/logen_page.dart';
import 'package:hoopa_book/pages/register.dart';
import 'package:hoopa_book/pages/register_pages/register_py_facebook.dart';
import 'package:hoopa_book/pages/register_pages/register_py_googel.dart';
import 'package:hoopa_book/pages/register_pages/register_py_ios.dart';
import 'package:hoopa_book/pages/register_pages/register_py_twitter.dart';
import 'package:hoopa_book/pages/splash_scren.dart';
import 'pages/register_pages/add_accunt.dart';
import 'pages/drawer_pages/message_app/massage.dart';
import 'pages/drawer_pages/message_app/massege_splash_scren.dart';
import 'pages/drawer_pages/my_home.dart';

void main() {
  runApp(HOOPA_APP());
}

class HOOPA_APP extends StatefulWidget {
  @override
  State<HOOPA_APP> createState() => _HOOPA_APPState();
}

class _HOOPA_APPState extends State<HOOPA_APP>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HOPA Book",
      debugShowCheckedModeBanner: false,
      home: splash_scren(),
      routes: {
        "mother_class": (context) => mother_class(),
        "logen_page": (context) => logen_page(),
        "register": (context) => register(),
        "add_accunt": (context) => add_accunt(),
        "add_photo_post": (context) => add_photo_post(),
        "add_text_post": (context) => add_text_post(),
        "home_page": (context) => home_page(),
        "message_app": (context) => message_app(),
        "splash_massegs_scren": (context) => splash_massegs_scren(),
        "setting_page": (context) => setting_page(),
        "register_py_facebook": (context) => register_py_facebook(),
        "register_py_googel": (context) => register_py_googel(),
        "register_py_ios": (context) => register_py_ios(),
        "register_py_twitter": (context) => register_py_twitter(),
        "person_setting": (context) => person_setting(),
        "chat_screen": (context) => chat_screen(),
        "massage_setting": (context) => massage_setting(),
        "favorite_page": (context) => favorite_page(),
        "notifications_page": (context) => notifications_page(),
        "fovorite_setting_page": (context) => fovorite_setting_page(),
        "notiflcations_setting_page": (context) => notiflcations_setting_page(),
      },
    );
  }
}
