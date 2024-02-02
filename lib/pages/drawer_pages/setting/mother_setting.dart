// ignore_for_file: camel_case_types, deprecated_member_use, use_key_in_widget_constructors, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/floating_action.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/Widget/opshins_windo.dart';

class setting_page extends StatefulWidget {
  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            hady_bar_page(
              titel_hady_bar: "Setteing App",
              icon_hady_bar: button_halp(),
              font_size: 20.0,
              font_weight: FontWeight.normal,
            ),
            search_setting_bar(),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1 - 20.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  button_go_to_parsson_setting(),
                  divider_setting(),
                  button_go_to_language_setting(),
                  divider_setting(),
                  button_go_to_massage_setting(),
                  divider_setting(),
                  button_go_to_fevorite_setting(),
                  divider_setting(),
                  button_go_to_notiflcations_setting(),
                  divider_setting(),
                  about(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floating_action_back_button(),
    );
  }
}

class divider_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
        right: 15.0,
        left: 15.0,
      ),
      child: Divider(),
    );
  }
}

class button_go_to_parsson_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return go_to_page_setting(
      titel_to_setting_page: "Person Setting",
      icon_to_setting_page: Icon(
        Icons.person_outline,
        color: mood_app ? Dicon_color : Licon_color,
      ),
      navigator_to_setting_page: "person_setting",
    );
  }
}

class button_go_to_language_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 60.0,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        borderRadius: BorderRadius.circular(20.0),
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
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {
          showOPion_landuage(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.language_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
            Text(
              "Language Setting",
              style: TextStyle(
                fontSize: 20.0,
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class search_setting_bar extends StatelessWidget {
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
            ),
          ],
        ),
        child: TextField(
          onTap: () {},
          controller: setting_sersh,
          decoration: const InputDecoration(
            hintText: "Search On Setting",
            hintStyle: TextStyle(
              fontFamily: "",
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 60.0,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        borderRadius: BorderRadius.circular(20.0),
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
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {
          // showOPion_landuage(context);
          about_opion(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.data_array,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
            Text(
              "About App",
              style: TextStyle(
                fontSize: 20.0,
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class button_go_to_massage_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return go_to_page_setting(
      titel_to_setting_page: "Massage Setting",
      navigator_to_setting_page: "massage_setting",
      icon_to_setting_page: Icon(
        Icons.message_outlined,
        color: mood_app ? Dicon_color : Licon_color,
      ),
    );
  }
}

class button_go_to_fevorite_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return go_to_page_setting(
      titel_to_setting_page: "Fevorite Setting",
      navigator_to_setting_page: "fovorite_setting_page",
      icon_to_setting_page: Icon(
        Icons.favorite_border_outlined,
        color: mood_app ? Dicon_color : Licon_color,
      ),
    );
  }
}

class button_go_to_notiflcations_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return go_to_page_setting(
      titel_to_setting_page: "Notiflcations Setting",
      navigator_to_setting_page: "notiflcations_setting_page",
      icon_to_setting_page: Icon(
        Icons.notifications_outlined,
        color: mood_app ? Dicon_color : Licon_color,
      ),
    );
  }
}

class go_to_page_setting extends StatelessWidget {
  const go_to_page_setting({
    required this.titel_to_setting_page,
    required this.navigator_to_setting_page,
    required this.icon_to_setting_page,
  });

  final String titel_to_setting_page;
  final String navigator_to_setting_page;
  final Icon icon_to_setting_page;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 60.0,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        borderRadius: BorderRadius.circular(20.0),
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
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("$navigator_to_setting_page");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: icon_to_setting_page,
            ),
            Text(
              "$titel_to_setting_page",
              style: TextStyle(
                fontSize: 20.0,
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
