// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, camel_case_types, prefer_typing_uninitialized_variables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

//  Help Icon Opshin ---->

/// Help Icon Opshin Funshen Mack Py Hopa Book Devolper ;
/// Vieo User If Liked User Vieo Halp For Hopa book App ;
/// Devolper (src) =>lib\pages\drawer_pages\setting\mother_setting.dart ;

Future<Future> opsin_user_help(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: mood_app ? Ddrawer_color : LBG_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.help_outline,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Help My",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Ranga-Bold",
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.close,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: haip_icon_opshin(),
          ),
        ),
      ),
    );

class haip_icon_opshin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Hoopa Booh is App phone project py Flutter  ...",
          ),
        ),
      ],
    );
  }
}

// _____________________________________________________________________________

// Updeta Data Opsin ---->

/// Updeta Data Opsin Funshen Mack Py Hopa Book Devolper ;
/// Vieo User If Liked User Update For Your Data ;
/// Devolper (src) =>lib\pages\drawer_pages\setting\mother_setting.dart ;

var updeta;
String? updeta_titel;
Future<Future> updeta_data_opsin(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => const updete_user_data(),
    );

class updete_user_data extends StatelessWidget {
  const updete_user_data({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: mood_app ? Ddrawer_color : LBG_color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.update,
              size: 25.0,
              color: mood_app ? Dicon_color : Licon_color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$updeta_titel",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Ranga-Bold",
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.close,
              size: 25.0,
              color: mood_app ? Dicon_color : Licon_color,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      content: updeta,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Save",
          ),
        ),
      ],
    );
  }
}
// _____________________________________________________________________________

// Opion shose Landuage --->

/// Opion shose Landuage Funshen Mack Py Hopa Book Devolper ;
/// Vieo User If Liked User Update For App Landuage ;
/// Devolper (src) =>lib\pages\drawer_pages\setting\mother_setting.dart ;

int _value = 1;
Future<Future> showOPion_landuage(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: mood_app ? Ddrawer_color : LBG_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.language,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Landuage",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Ranga-Bold",
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.close,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        content: radio_shose_language(),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Save",
            ),
          ),
        ],
      ),
    );

class radio_shose_language extends StatefulWidget {
  @override
  State<radio_shose_language> createState() => _radio_shose_languageState();
}

class _radio_shose_languageState extends State<radio_shose_language> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 1;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text("English"),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 2;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text("Arabic"),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 3,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 3;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text("French"),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 4,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = 4;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Text("German"),
          ],
        ),
      ],
    );
  }
}
// _____________________________________________________________________________

// Opion  About --->

/// About Opion Funshen Mack Py Hopa Book Devolper ;
/// Vieo User If Have Go To The About Hoba Book App In Mother Setting Page ;
/// Devolper (src) =>lib\pages\drawer_pages\setting\mother_setting.dart ;

Future<Future> about_opion(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: mood_app ? Ddrawer_color : LBG_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.abc,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Opion  About",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Ranga-Bold",
                  color: mood_app ? Dtext_color : Ltext_color,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.close,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        content: const Text("data"),
      ),
    );
//______________________________________________________________________________

// Show OPion Add Post For Add Post On The Mother Page  --->

/// Show OPion Add Post Funshen Mack Py Hopa Book Devolper ;
/// Vieo User On Pressed Buttom Add post ;
/// Devolper (src) =>lib\Widget\bottom_navigat.dart ;

Future showOPion_add_post(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: mood_app ? Ddrawer_color : LBG_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: Row(
          children: <Widget>[
            Icon(
              Icons.post_add_sharp,
              size: 25.0,
              color: mood_app ? Dicon_color : Licon_color,
            ),
            Text(
              "Add Post",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Ranga-Bold",
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.close,
                size: 25.0,
                color: mood_app ? Dicon_color : Licon_color,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    color: mood_app ? Ddrawer_color : Ldrawer_color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("add_photo_post");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_photo_alternate_outlined,
                            size: 25.0,
                            color: mood_app ? Dicon_color : Licon_color,
                          ),
                        ),
                        Text(
                          "Photo Post..!",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Ranga-Bold",
                            color: mood_app ? Dtext_color : Ltext_color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: mood_app ? Ddrawer_color : Ldrawer_color,
                    onPressed: () {
                      Navigator.of(context).pushNamed("add_text_post");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.text_increase_outlined,
                            size: 25.0,
                            color: mood_app ? Dicon_color : Licon_color,
                          ),
                        ),
                        Text(
                          "Text Post..!",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Ranga-Bold",
                            color: mood_app ? Dtext_color : Ltext_color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
// _____________________________________________________________________________

// Button Sheet OPshin For Shere Post --->

/// Bottom Sheet Shar Post Funshen Mack Py Hopa Book Devolper ;
/// Vieo User On Pressed Buttom Share post ;
/// Devolper (src) =>lib\pages\add_post.dart ;

Future<dynamic> bottom_sheet_shar_post(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: mood_app ? Ddrawer_color : Ldrawer_color,
    elevation: 10.0,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    builder: (context) => const Center(),
  );
}
