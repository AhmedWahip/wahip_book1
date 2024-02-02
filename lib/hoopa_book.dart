// ignore_for_file: camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/bottom_navigat.dart';
import 'package:hoopa_book/Widget/drawer_menu.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/Widget/search_app.dart';

class mother_class extends StatefulWidget {
  @override
  State<mother_class> createState() => _mother_classState();
}

class _mother_classState extends State<mother_class>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? DBG_color : LBG_color,
      body: Stack(
        children: <Widget>[
          drawer_menu(),
          const home(),
        ],
      ),
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(isDrawerOpen ? 0.85 : 1.00)
        ..rotateZ(isDrawerOpen ? -50 : 0),
      duration: const Duration(microseconds: 200),
      decoration: BoxDecoration(
        color: mood_app ? DBG_color : LBG_color,
        borderRadius: isDrawerOpen
            ? const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )
            : BorderRadius.circular(0),
      ),
      child: RefreshIndicator(
        backgroundColor: mood_app ? DBG_color : LBG_color,
        color: mood_app ? Ldrawer_color : Ddrawer_color,
        onRefresh: () async {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            hopa_app_bar(),
            const hopa_App_body(),
          ],
        ),
      ),
    );
  }

  SafeArea hopa_app_bar() {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
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
              child: isDrawerOpen
                  ? IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 25.0,
                        color: mood_app ? Dicon_color : Licon_color,
                      ),
                      onPressed: () {
                        setState(() {
                          xoffset = 0;
                          yoffset = 0;
                          isDrawerOpen = false;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.sort_sharp,
                        size: 25.0,
                        color: mood_app ? Dicon_color : Licon_color,
                      ),
                      onPressed: () {
                        setState(() {
                          xoffset = 290;
                          yoffset = 80;
                          isDrawerOpen = true;
                        });
                      },
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "HOPA BOOK".toUpperCase(),
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Ranga-Bold",
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
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
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 25.0,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: search_opshin(),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50.0,
              height: 50.0,
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
              child: IconButton(
                onPressed: () {
                  setState(() {
                    mood_app = !mood_app;
                  });
                  Navigator.of(context).pushNamed("mother_class");
                },
                icon: mood_app ? Dicon_mood : Licon_mood,
                color: mood_app ? Dicon_color : Licon_color,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class hopa_App_body extends StatelessWidget {
  const hopa_App_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          /*Mother Container App */
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1 - 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: app_post,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 2.0,
          right: 1,
          left: 1,
          child: bottom_navigat_app_page(),
        ),
      ],
    );
  }
}
