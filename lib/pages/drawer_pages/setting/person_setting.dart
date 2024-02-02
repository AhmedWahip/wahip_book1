// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/floating_action.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/opshins_windo.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class person_setting extends StatefulWidget {
  @override
  State<person_setting> createState() => _person_settingState();
}

class _person_settingState extends State<person_setting> {
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
              titel_hady_bar: "titel_hady_bar",
               font_size: 20.0,
              font_weight: FontWeight.normal,
              icon_hady_bar: button_halp(),
            ),
            class_update_ferst_name(),
            class_update_last_name(),
            class_update_passwed(),
            calss_update_user_photo(),
            calss_update_biography(),
          ],
        ),
      ),
      floatingActionButton: floating_action_back_button(),
    );
  }
}

class class_update_last_name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
            updeta_titel = "Updeta Last Name";
            updeta = Padding(
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
                  controller: last_name,
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    hintStyle: const TextStyle(
                      // color: Textcolor,
                      fontFamily: "",
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            );
            updeta_data_opsin(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  size: 25.0,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
              ),
              Text(
                "Updeta Last Name",
                style: TextStyle(
                  fontSize: 20.0,
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class class_update_ferst_name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
            updeta_titel = "Updeta Ferst Name";
            updeta = Padding(
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
                  controller: ferst_name,
                  decoration: InputDecoration(
                    hintText: "Updeta Ferst Name",
                    hintStyle: const TextStyle(
                      // color: Textcolor,
                      fontFamily: "",
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            );
            updeta_data_opsin(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  size: 25.0,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
              ),
              Text(
                "Updeta Ferst Name",
                style: TextStyle(
                  fontSize: 20.0,
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class calss_update_user_photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
            updeta_titel = "Updeta Yor Photo";
            updeta = Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.amber,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            );
            updeta_data_opsin(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.photo,
                  size: 25.0,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
              ),
              Text(
                "Updeta Yor Photo ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class calss_update_biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
            updeta_titel = "Updeta Biography";
            updeta = Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: biography,
                decoration: const InputDecoration(
                  hintText: "Updeta You Biography",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: "",
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.post_add,
                    color: Colors.grey,
                  ),
                ),
              ),
            );
            updeta_data_opsin(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.biotech,
                  size: 25.0,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
              ),
              Text(
                "Updeta Yor Biography ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class class_update_passwed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
            updeta_titel = "Updeta Yor Photo";
            updeta = Padding(
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
                  controller: passwerd,
                  decoration: InputDecoration(
                    hintText: "Now Passwerd",
                    hintStyle: const TextStyle(
                      fontFamily: "",
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: IconButton(
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            );
            updeta_data_opsin(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.lock,
                  size: 25.0,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
              ),
              Text(
                "Updeta a Passwerd ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
