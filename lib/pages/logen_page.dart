// // ignore_for_file: camel_case_types, non_constant_identifier_names, deprecated_member_use, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

// import 'dart:async';

// ignore_for_file: camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/hoopa_book.dart';

// ignore: unused_element
Future _opion_logen(BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: const Color(0xF23F3744),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 400.0,
      title: Row(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "log on",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const Icon(
            Icons.login,
            color: Colors.white,
            size: 25,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 25.0,
              color: Colors.white,
              semanticLabel: "Close",
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      content: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            input_email_for_login(),
            input_passwerd_for_login(),
            login_button(),
            for_get_passwerd(),
            devider_or(),
            logen_by_accunts(),
          ],
        ),
      ),
    ),
  );
}

class logen_page extends StatefulWidget {
  @override
  State<logen_page> createState() => _logen_pageState();
}

class _logen_pageState extends State<logen_page>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          color: mood_app ? DBG_color : LBG_color,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1 - 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200.0),
                    // bottomLeft: Radius.circular(120.0),
                  ),
                  color: Color(0xFFFF6464),
                ),
              ),
              // _______________________________________________________________
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.8 - 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200.0),
                    // bottomLeft: Radius.circular(200.0),
                  ),
                  color: Color(0x963F3744),
                ),
              ),
              // _______________________________________________________________
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.7 - 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200.0),
                    // bottomLeft: Radius.circular(120.0),
                  ),
                  color: Color(0x963F3744),
                ),
              ),
              // _______________________________________________________________
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.6 - 70,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(200.0),
                    // bottomLeft: Radius.circular(50.0),
                  ),
                  color: Color(0xFF3F3744),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "WELCOME!",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "bles enter your email",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 160,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFFFF6464),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            _opion_logen(context);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Log on",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.login,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don’t have accunt?",
                      style: TextStyle(
                        fontSize: 20,
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("register");
                      },
                      child: const Text(
                        "Saing Up!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFFF6464),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Positioned

class input_email_for_login extends StatelessWidget {
  const input_email_for_login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: border_check_email,
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
          controller: email,
          decoration: InputDecoration(
            hintText: "Email or Phone namper",
            hintStyle: const TextStyle(
              // color: Textcolor,
              fontFamily: "",
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: IconButton(
              icon: const Icon(
                Icons.email,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class input_passwerd_for_login extends StatelessWidget {
  const input_passwerd_for_login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: border_check_passwer,
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
          controller: passwerd,
          obscureText: true,
          decoration: InputDecoration(
            hintText: " Passwerd",
            hintStyle: const TextStyle(
              // color: Textcolor,
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
  }
}

class login_button extends StatefulWidget {
  const login_button({Key? key}) : super(key: key);

  @override
  State<login_button> createState() => _login_buttonState();
}

class _login_buttonState extends State<login_button>
    with SingleTickerProviderStateMixin {
  void opion_true_accunt(BuildContext context) async {
    Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => mother_class(),
          ),
          ((route) => false),
        );
      });
    });
    Timer(const Duration(milliseconds: 10), () {
      setState(() {});
    });
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0x00FFFFFF),
        content: Center(
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: const Color(0xFFFF8364),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Center(
              child: check_email,
            ),
          ),
        ),
      ),
    );
  }

  void opion_folse_accunt(BuildContext context) async {
    Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        Navigator.pop(context);
      });
    });
    Timer(const Duration(milliseconds: 10), () {
      setState(() {});
    });
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0x00FFFFFF),
        content: Center(
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: const Color(0xFFFF8364),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Center(
              child: check_email,
            ),
          ),
        ),
      ),
    );
  }

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
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: const Color(0xFFFFFFFF),
          onPressed: () {
            if (email.text == "" && passwerd.text == "") {
              setState(() {
                check_email = false_email;
                border_check_passwer = border_erorr;
                opion_folse_accunt(context);
              });
            } else {
              setState(() {
                check_email = trnu_email;
                opion_true_accunt(context);
              });
            }
          },
          child: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.login,
                    // color: Textcolor,
                    size: 20.0,
                  ),
                ),
                Text(
                  "Log in",
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

class for_get_passwerd extends StatelessWidget {
  const for_get_passwerd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "For Get The Passwerd?",
          style: TextStyle(
            color: Color(0xFFFF6464),
          ),
        ),
      ),
    );
  }
}

class devider_or extends StatelessWidget {
  const devider_or({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "____________",
            style: TextStyle(color: mood_app ? Dtext_color : Ltext_color),
          ),
          Text(
            "Or",
            style: TextStyle(
              color: mood_app ? Dtext_color : Ltext_color,
              fontSize: 15,
            ),
          ),
          Text(
            "____________",
            style: TextStyle(
              color: mood_app ? Dtext_color : Ltext_color,
            ),
          ),
        ],
      ),
    );
  }
}

class logen_by_accunts extends StatelessWidget {
  const logen_by_accunts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //  Container Log on Py FaceBook
          Container(
            width: 70.0,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: const Color(0xFF034377),
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("register_py_facebook");
              },
              child: facbook_icon1,
            ),
          ),

          // Container Log On Py Googel

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 70.0,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xFFF44336),
              ),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("register_py_googel");
                },
                child: googel_icon1,
              ),
            ),
          ),
          // Container Log On Py Twitter
          Container(
            width: 70.0,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: const Color(0xFF2196F3),
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("register_py_twitter");
              },
              child: twitter_icon1,
            ),
          ),
        ],
      ),
    );
  }
}

class my_button extends StatelessWidget {
  const my_button({
    required this.icon_button,
    required this.text_button,
    required this.onPressed,
  });
  final Icon icon_button;
  final String text_button;
  final VoidCallback onPressed;

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
            color: mood_app ? LBG_color : DBG_color,
          ),
        ),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: mood_app ? DBG_color : LBG_color,
          onPressed: onPressed,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(8.0), child: icon_button),
                Text(
                  "$text_button",
                  style: const TextStyle(
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
