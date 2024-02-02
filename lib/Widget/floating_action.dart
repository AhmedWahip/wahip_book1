// ignore_for_file: camel_case_types, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class floating_action_back_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
      },
      backgroundColor: mood_app ? Ddrawer_color : Ldrawer_color,
      child: SizedBox(
        width: 30,
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: mood_app ? Dicon_color : Licon_color,
          ),
        ),
      ),
    );
  }
}
