// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/selver_register_logo.dart';

class register_py_twitter extends StatefulWidget {
  @override
  State<register_py_twitter> createState() => _register_py_twitterState();
}

class _register_py_twitterState extends State<register_py_twitter>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            hady_bar_page(
              font_size: 20.0,
              font_weight: FontWeight.normal,
              titel_hady_bar: "Register Py Twitter",
              icon_hady_bar: button_halp(),
            ),
            const Text(
              "Let’s help you meet up your tasks",
              style: TextStyle(
                color: Color(0xFF2196F3),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // const titel_register_page(),
            const SizedBox(
              height: 10.0,
            ),
            twitter_icon2,
            input_twitter_accunt(),
            input_twitter_passwerd(),
            buttom_registter(),
            const selvers_logo(
              selver_titel: "Meta",
              selver_titel_color: Color(0xFF2196F3),
            ),
          ],
        ),
      ),
    );
  }
}

class input_twitter_accunt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 - 30.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
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
          controller: twitter_email,
          decoration: const InputDecoration(
            hintText: "Twitter Accunt",
            hintStyle: TextStyle(
              // color: Textcolor,
              fontFamily: "",
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xFF2196F3),
            ),
          ),
        ),
      ),
    );
  }
}

class input_twitter_passwerd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 - 30.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
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
          controller: twitter_passwewrd,
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Twitter Passwerd",
            hintStyle: TextStyle(
              // color: Textcolor,
              fontFamily: "",
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Icon(
              Icons.lock_outline_rounded,
              color: Color(0xFF2196F3),
            ),
          ),
        ),
      ),
    );
  }
}

class buttom_registter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
        // ignore: deprecated_member_use
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: const Color(0xFFFFFFFF),
          onPressed: () {},
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.login,
                    // color: Textcolor,
                    size: 20.0,
                  ),
                ),
                Text(
                  "Register !",
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
    );
  }
}
