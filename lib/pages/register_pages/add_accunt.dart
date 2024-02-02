// ignore_for_file: deprecated_member_use, camel_case_types, non_constant_identifier_names, unused_element, no_leading_underscores_for_local_identifiers, unused_local_variable, unnecessary_string_interpolations, unnecessary_this, use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/hoopa_book.dart';

class add_accunt extends StatefulWidget {
  @override
  State<add_accunt> createState() => _add_accuntState();
}

class _add_accuntState extends State<add_accunt>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            hady_bar_page(
              font_size: 20.0,
              font_weight: FontWeight.normal,
              titel_hady_bar: "Welcome To Back",
              icon_hady_bar: button_halp(),
            ),
            Text(
              "Let’s help you meet up your tasks",
              style: TextStyle(
                color: mood_app ? Ddrawer_color : Ldrawer_color,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // titel_register_page(),
            const input_user_ferst_name(),
            const input_user_last_name(),
            const input_user_Birth_yaer(),
            const input_user_email(),
            const input_user_now_passwerd(),
            const _agen_passwerd(),
            const register_button(),
          ],
        ),
      ),
    );
  }
}

class input_user_ferst_name extends StatelessWidget {
  const input_user_ferst_name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 - 30.0,
        height: 40.0,
        decoration: BoxDecoration(
          border: border_check_last_name,
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
            hintText: "Ferst Name",
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
  }
}

class input_user_last_name extends StatelessWidget {
  const input_user_last_name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 - 30.0,
        height: 40.0,
        decoration: BoxDecoration(
          border: border_check_last_name,
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
  }
}

String? view_user_berthe_day;
String? View_user_barthe_month;
String? View_user_barthe_year;

class input_user_Birth_yaer extends StatefulWidget {
  const input_user_Birth_yaer({Key? key}) : super(key: key);

  @override
  State<input_user_Birth_yaer> createState() => _input_user_Birth_yaerState();
}

class _input_user_Birth_yaerState extends State<input_user_Birth_yaer>
    with SingleTickerProviderStateMixin {
  String? value_day;
  String? value_month;
  String? value_year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        height: 40.0,
        width: MediaQuery.of(context).size.width * 1 - 30,
        decoration: BoxDecoration(
          border: border_check_berth_data,
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
        child: Row(
          children: <Widget>[
            // Icon Birth Yaer
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 5,
                  ),
                  child: Icon(
                    Icons.yard_rounded,
                    color: Color(0xFF9E9E9E),
                  ),
                ),

                //Input Birth( Day , Month , Year)

                //  Dropdown Button input Birth Day

                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 2,
                    top: 2,
                    left: 2,
                    right: 2,
                  ),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value_day,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF9E9E9E),
                        ),
                        items: birthday.map(build_birth_day).toList(),
                        onChanged: (value1) {
                          view_user_berthe_day = value1;
                          setState(
                            () => this.value_day = value1,
                          );
                        },
                      ),
                    ),
                  ),
                ),

                //  Dropdown Button input Birth Month

                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 2,
                    top: 2,
                  ),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          value: value_month,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF9E9E9E),
                          ),
                          items: birthmonth.map(build_birth_month).toList(),
                          onChanged: (value2) {
                            View_user_barthe_month = value2;
                            setState(
                              () => this.value_month = value2,
                            );
                          }),
                    ),
                  ),
                ),

                //  Dropdown Button input Birth Year

                Padding(
                  padding: const EdgeInsets.only(bottom: 2, top: 2, left: 2),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: value_year,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF9E9E9E),
                        ),
                        items: birth_year.map(build_birth_year).toList(),
                        onChanged: (value3) {
                          View_user_barthe_year = value3;
                          setState(
                            () => this.value_year = value3,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class input_user_email extends StatelessWidget {
  const input_user_email({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        height: 40.0,
        width: MediaQuery.of(context).size.width * 1 - 30,
        decoration: BoxDecoration(
          border: border_check_email,
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
          controller: email,
          decoration: InputDecoration(
            hintText: "Email or Phone namper",
            hintStyle: const TextStyle(
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

class input_user_now_passwerd extends StatelessWidget {
  const input_user_now_passwerd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 - 30.0,
        height: 40.0,
        decoration: BoxDecoration(
          border: border_check_passwer,
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
  }
}

class _agen_passwerd extends StatelessWidget {
  const _agen_passwerd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 - 30.0,
        height: 40.0,
        decoration: BoxDecoration(
          border: border_check_agen_passwerd,
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
          controller: agen_passwerd,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Aden Passwerd",
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

class register_button extends StatefulWidget {
  const register_button({Key? key}) : super(key: key);

  @override
  State<register_button> createState() => _register_buttonState();
}

class _register_buttonState extends State<register_button> {
  Future _opion_error_register(BuildContext context) async {
    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => add_accunt()),
          ((route) => false),
        );
      });
    });
    Timer(const Duration(milliseconds: 10), () {
      setState(() {
        bool _isVisible = false;
        _isVisible = true;
      });
    });
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 300.0,
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$view_erorr",
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future opion_true_accunt(BuildContext context) async {
    Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => mother_class()),
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
            //  If / Else Show Erorrs

            // If All User Data = Null => Show All Erorrs =>

            if (ferst_name.text == "" &&
                last_name.text == "" &&
                email.text == "" &&
                passwerd.text == "" &&
                agen_passwerd.text == "") {
              setState(() {
                border_check_ferst_name = border_erorr;
                border_check_last_name = border_erorr;
                border_check_berth_data = border_erorr;
                border_check_email = border_erorr;
                border_check_passwer = border_erorr;
                border_check_agen_passwerd = border_erorr;
              });
              view_erorr = text_erorr_all;
              _opion_error_register(context);
            }
            // If Farst Name = Null => Show Ferst Name Erorrs =>
            else if (ferst_name.text == "") {
              setState(() {
                border_check_ferst_name = border_erorr;
                border_check_last_name = border_check_last_name;
                border_check_berth_data = border_check_berth_data;
                border_check_email = border_check_email;
                border_check_passwer = border_check_passwer;
                border_check_agen_passwerd = border_check_agen_passwerd;
              });
              view_erorr = first_name_erorr;
              _opion_error_register(context);
            }
            // If Last Name = Null => Show Last Name Erorrs =>
            else if (last_name.text == "") {
              setState(() {
                border_check_ferst_name = border_check_ferst_name;
                border_check_last_name = border_erorr;
                border_check_berth_data = border_check_berth_data;
                border_check_email = border_check_email;
                border_check_passwer = border_check_passwer;
                border_check_agen_passwerd = border_check_agen_passwerd;
              });
              view_erorr = last_name_erorr;
              _opion_error_register(context);
            }
            // If Last Name = Null => Show Last Name Erorrs =>
            else if (view_user_berthe_day == null &&
                View_user_barthe_month == null &&
                View_user_barthe_year == null) {
              setState(() {
                border_check_ferst_name = border_check_ferst_name;
                border_check_last_name = border_check_last_name;
                border_check_berth_data = border_erorr;
                border_check_email = border_check_email;
                border_check_passwer = border_check_passwer;
                border_check_agen_passwerd = border_check_agen_passwerd;
              });
              view_erorr = berth_data_erorr;
              _opion_error_register(context);
            }
            // If User Email = Null => Show Email Erorrs =>
            else if (email.text == "") {
              setState(() {
                border_check_ferst_name = border_check_ferst_name;
                border_check_last_name = border_check_last_name;
                border_check_berth_data = border_check_berth_data;
                border_check_email = border_erorr;
                border_check_passwer = border_check_passwer;
                border_check_agen_passwerd = border_check_agen_passwerd;
              });
              view_erorr = email_erorr;
              _opion_error_register(context);
            }
            // If Passwerd = Null => Show Passwerd Erorrs =>
            else if (passwerd.text == "") {
              setState(() {
                border_check_ferst_name = border_check_ferst_name;
                border_check_last_name = border_check_last_name;
                border_check_berth_data = border_check_berth_data;
                border_check_email = border_check_email;
                border_check_passwer = border_erorr;
                border_check_agen_passwerd = border_check_agen_passwerd;
              });
              view_erorr = passwerd_erorr;
              _opion_error_register(context);
            }
            // If Agen Passwerd = Null => Show Agen Passwerd Erorrs =>
            else if (passwerd.text == "") {
              setState(() {
                border_check_ferst_name = border_check_ferst_name;
                border_check_last_name = border_check_last_name;
                border_check_berth_data = border_check_berth_data;
                border_check_email = border_check_email;
                border_check_passwer = border_check_passwer;
                border_check_agen_passwerd = border_erorr;
              });
              view_erorr = agen_passwerd_erorr;
              _opion_error_register(context);
            }
            // If Passwerd != Agen Passwerd => Show =>
            //(Agen Passwerd Erorrs & Agen Passwed Erorrs)
            else if (passwerd.text != agen_passwerd.text) {
              setState(() {
                border_check_ferst_name = border_check_ferst_name;
                border_check_last_name = border_check_last_name;
                border_check_berth_data = border_check_berth_data;
                border_check_email = border_check_email;
                border_check_passwer = border_erorr;
                border_check_agen_passwerd = border_erorr;
              });
              view_erorr = passwerd_agen_passwed_erorr;
              _opion_error_register(context);
            }
            //
            else {
              check_email = trnu_email;
              opion_true_accunt(context);
            }
          },
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
                  "Register",
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
