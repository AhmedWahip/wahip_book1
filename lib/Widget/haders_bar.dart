// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/opshins_windo.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class button_halp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        opsin_user_help(context);
      },
      icon: Icon(
        Icons.help_outline,
        size: 30.0,
        color: mood_app ? Dicon_color : Licon_color,
      ),
    );
  }
}

class button_setting extends StatelessWidget {
  const button_setting({
    required this.go_to_seetting_page,
  });
  final String go_to_seetting_page;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        /// Button Navigator To Sengel Setting page ;
        /// 
        ///  /// (src) => On The Folder ;
        // ignore: unnecessary_string_interpolations
        Navigator.of(context).pushNamed("$go_to_seetting_page");
      },
      icon: Icon(
        Icons.settings_outlined,
        size: 30.0,
        color: mood_app ? Dicon_color : Licon_color,
      ),
    );
  }
}

class hady_bar_page extends StatelessWidget {
  ///
  /// Hady Bar Page Widget mack To Hopa App Devolper ;
  /// Hady Bar Page On All The Pages Hopa Book ;
  /// (src) => On The Folder ;
  ///  -----importent-----
  /// Hady Bar Page Have To =>
  /// 1 - Var On Type String => titel_hady_bar ;
  /// 2 - Var On Type Widget => go_to_seetting_page = button_setting() Or button_halp();
  ///
  const hady_bar_page({
    required this.titel_hady_bar,
    required this.icon_hady_bar,
    required this.font_size,
    required this.font_weight,
  });
  final String titel_hady_bar;
  final Widget icon_hady_bar;
  final double font_size;
  final FontWeight font_weight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3 - 30,
      child: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: 200.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: mood_app
                    ? const Color(0xB33F3744)
                    : const Color(0xBCFF6464),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200.0),
                  bottomRight: Radius.circular(200.0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            child: Container(
              width: 100.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: mood_app
                    ? const Color(0xB33F3744)
                    : const Color(0xBCFF6464),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(150.0),
                  topRight: Radius.circular(150.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            right: 10.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                child: icon_hady_bar,
              ),
            ),
          ),
          Positioned(
            right: 30.0,
            bottom: 50.0,
            child: Text(
              // ignore: unnecessary_string_interpolations
              "$titel_hady_bar",
              style: TextStyle(
                fontSize: font_size,
                fontWeight: font_weight,
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
