// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/floating_action.dart';

class fovorite_setting_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floating_action_back_button(),
    );
  }
}
