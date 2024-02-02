// --->

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class selvers_logo extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const selvers_logo({
    required this.selver_titel,
    required this.selver_titel_color,
  });
  final String selver_titel;
  final Color selver_titel_color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "From",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              // ignore: unnecessary_string_interpolations
              "$selver_titel",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: selver_titel_color,
              ),
            ),
          )
        ],
      ),
    );
  }
}
