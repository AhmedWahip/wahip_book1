// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/Widget/opshins_windo.dart';

/// Bottom Navigat Home Page Widget mack To Hopa Book App Devolper ;
/// Vieo User On  Hopa Home Page ;
/// (src) => lib\pages\drawer_pages\my_home.dart ;
class bottom_navigat_home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double displaywadth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displaywadth * 0.05),
      height: displaywadth * 0.155,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        boxShadow: [
          BoxShadow(
            color: mood_app
                ? Colors.white.withOpacity(.1)
                : Colors.black.withOpacity(.1),
            blurRadius: 30.0,
            offset: const Offset(0, 10),
          )
        ],
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("mother_class");
              },
              icon: Icon(
                Icons.home_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: displaywadth * .1,
              decoration: BoxDecoration(
                color: mood_app ? Ddrawer_color : Ldrawer_color,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 4.0,
                      left: 8.0,
                    ),
                    child: Icon(
                      Icons.person,
                      color: mood_app ? Dicon_color : Licon_color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 8.0,
                      left: 4.0,
                    ),
                    child: Text(
                      "Person",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("message_app");
              },
              icon: Icon(
                Icons.message_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                showOPion_add_post(context);
              },
              icon: Icon(
                Icons.post_add,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// _____________________________________________________________________________

/// Bottom Bavigat App Bage Widget mack To Hopa Book App Devolper ;
/// Vieo User On  Hopa Book Page ;
/// (src) => lib\hoopa_book.dart ;
class bottom_navigat_app_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double displaywadth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displaywadth * 0.05),
      height: displaywadth * 0.155,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        boxShadow: [
          BoxShadow(
            color: mood_app
                ? Colors.white.withOpacity(.1)
                : Colors.black.withOpacity(.1),
            blurRadius: 30.0,
            offset: const Offset(0, 10),
          )
        ],
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: displaywadth * .1,
              decoration: BoxDecoration(
                color: mood_app ? Ddrawer_color : Ldrawer_color,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 4.0,
                      left: 8.0,
                    ),
                    child: Icon(
                      Icons.home_outlined,
                      color: mood_app ? Dicon_color : Licon_color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 8.0,
                      left: 4.0,
                    ),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("home_page");
              },
              icon: Icon(
                Icons.person_outline,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("message_app");
              },
              icon: Icon(
                Icons.message_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                showOPion_add_post(context);
              },
              icon: Icon(
                Icons.post_add,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// _____________________________________________________________________________

/// Bottom Navigat Massge Page Widget mack To Hopa Book App Devolper ;
/// Vieo User On Massage Page ;
/// (src) => lib\pages\drawer_pages\message_app\massage.dart ;

class bottom_navigat_massge_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double displaywadth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displaywadth * 0.05),
      height: displaywadth * 0.155,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        boxShadow: [
          BoxShadow(
            color: mood_app
                ? Colors.white.withOpacity(.1)
                : Colors.black.withOpacity(.1),
            blurRadius: 30.0,
            offset: const Offset(0, 10),
          )
        ],
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("mother_class");
              },
              icon: Icon(
                Icons.home_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("home_page");
              },
              icon: Icon(
                Icons.person_outline,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: displaywadth * .1,
              decoration: BoxDecoration(
                color: mood_app ? Ddrawer_color : Ldrawer_color,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 4.0,
                      left: 8.0,
                    ),
                    child: Icon(
                      Icons.message_outlined,
                      color: mood_app ? Dicon_color : Licon_color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 8.0,
                      left: 4.0,
                    ),
                    child: Text(
                      "Message",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                showOPion_add_post(context);
              },
              icon: Icon(
                Icons.post_add,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// _____________________________________________________________________________

/// Bottom Navigat Post Page Widget mack To Hopa Book App Devolper ;
/// Vieo User On Add Post Page ;
/// (src) => lib\pages\add_post.dart ;

class bottom_navigat_post_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double displaywadth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displaywadth * 0.05),
      height: displaywadth * 0.155,
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        boxShadow: [
          BoxShadow(
            color: mood_app
                ? Colors.white.withOpacity(.1)
                : Colors.black.withOpacity(.1),
            blurRadius: 30.0,
            offset: const Offset(0, 10),
          )
        ],
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("mother_class");
              },
              icon: Icon(
                Icons.home_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("home_page");
              },
              icon: Icon(
                Icons.person_outline,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("message_app");
              },
              icon: Icon(
                Icons.message_outlined,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: displaywadth * .1,
              decoration: BoxDecoration(
                color: mood_app ? Ddrawer_color : Ldrawer_color,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 4.0,
                      left: 8.0,
                    ),
                    child: Icon(
                      Icons.post_add,
                      color: mood_app ? Dicon_color : Licon_color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      // top: 8.0,
                      // bottom: 8.0,
                      right: 8.0,
                      left: 4.0,
                    ),
                    child: Text(
                      "Add Post",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
