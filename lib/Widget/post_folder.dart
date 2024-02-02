// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/opshins_windo.dart';
import 'package:hoopa_book/Widget/popup_menu_.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';

class container_photo_boost extends StatefulWidget {
  const container_photo_boost({Key? key}) : super(key: key);

  @override
  State<container_photo_boost> createState() => _container_photo_boostState();
}

class _container_photo_boostState extends State<container_photo_boost>
    with SingleTickerProviderStateMixin {
  // Container Photo Post ---->
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          /*Mathor Container Of The post */
          width: MediaQuery.of(context).size.width * 1 - 20,
          decoration: BoxDecoration(
            color: mood_app ? Dpost_color : Lpost_color,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0.0, 20.0),
                blurRadius: 50.0,
                color: mood_app
                    ? DShadow_color.withOpacity(0.50)
                    : LShadow_color.withOpacity(0.23),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: const Color(0x7C9E9E9E),
                        child: Icon(
                          CupertinoIcons.person,
                          color: mood_app ? Dicon_color : Licon_color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${ferst_name.text} ${last_name.text}",
                        style: TextStyle(
                          color: mood_app ? Dtext_color : Ltext_color,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: popup_menu_button_bost(),
                    ),
                  ],
                ),
              ),
              /*Container Titel Post */
              SizedBox(
                width: MediaQuery.of(context).size.width * 1 - 50,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      // ignore: unnecessary_string_interpolations
                      "${titel_post.text}",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                ),
              ),

              /*Container Photo Post */
              Container(
                width: MediaQuery.of(context).size.width * 1 - 50,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Divider(
                  height: 5.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // ignore: unnecessary_brace_in_string_interps
                    Text(
                      "Favrit Post (${0 + favrit_post})",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: share_button_opshin(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: fovorit_button_opshen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: Divider(
            height: 30,
          ),
        ),
      ],
    );
  }
}

class container_text_post extends StatefulWidget {
  const container_text_post({Key? key}) : super(key: key);

  @override
  State<container_text_post> createState() => _container_text_postState();
}

class _container_text_postState extends State<container_text_post>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          /*Mathor Container Of The post */
          width: MediaQuery.of(context).size.width * 1 - 20,
          decoration: BoxDecoration(
            color: mood_app ? Dpost_color : Lpost_color,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0.0, 20.0),
                blurRadius: 50.0,
                color: mood_app
                    ? DShadow_color.withOpacity(0.50)
                    : LShadow_color.withOpacity(0.23),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: const Color(0x7C9E9E9E),
                      child: Icon(
                        CupertinoIcons.person,
                        color: mood_app ? Dicon_color : Licon_color,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${ferst_name.text} ${last_name.text}",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: popup_menu_button_bost(),
                  ),
                ],
              ),

              /*Container Titel Boost */

              SizedBox(
                width: MediaQuery.of(context).size.width * 1 - 50,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      // ignore: unnecessary_string_interpolations
                      "${titel_post.text}",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: Divider(),
              ),

              /*Padding Vieo Favrit Post */

              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // ignore: unnecessary_brace_in_string_interps
                    Text(
                      "Favrit Post (${0 + favrit_post})",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),

              /* Shere Post Buttom & Fovroit Post buttom */

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: share_button_opshin(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: fovorit_button_opshen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          child: Divider(
            height: 30,
          ),
        ),
      ],
    );
  }
}

class share_button_opshin extends StatefulWidget {
  const share_button_opshin({Key? key}) : super(key: key);

  @override
  State<share_button_opshin> createState() => _share_button_opshinState();
}

class _share_button_opshinState extends State<share_button_opshin> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          mood_app ? Dpost_color : Lpost_color,
        ),
        shadowColor: MaterialStateProperty.all(
          mood_app ? Dicon_color : Licon_color.withOpacity(0.23),
        ),
      ),
      onPressed: () {
        bottom_sheet_shar_post(context);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
              color: mood_app ? Dicon_color : Licon_color,
            ),
          ),
          Text(
            "Share",
            style: TextStyle(
              color: mood_app ? Dtext_color : Ltext_color,
            ),
          ),
        ],
      ),
    );
  }
}

class fovorit_button_opshen extends StatefulWidget {
  const fovorit_button_opshen({Key? key}) : super(key: key);

  @override
  State<fovorit_button_opshen> createState() => _fovorit_button_opshenState();
}

class _fovorit_button_opshenState extends State<fovorit_button_opshen> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          mood_app ? Dpost_color : Lpost_color,
        ),
        shadowColor: MaterialStateProperty.all(
          mood_app ? Dicon_color : Licon_color.withOpacity(0.23),
        ),
      ),
      onPressed: () {
        setState(() {
          favorit_opshin = !favorit_opshin;
          if (favorit_opshin == true) {
            favrit_post = 1;
            add_the_post_on_favorite_page = true;
          } else if (favorit_opshin == false) {
            favrit_post = 0;
            add_the_post_on_favorite_page = false;
          }
          Navigator.of(context).pushNamed("mother_class");
        });
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: favorit_opshin ? favorit_true : favorit_fools,
          ),
          Text(
            "favorite",
            style: TextStyle(
              color: mood_app ? Dtext_color : Ltext_color,
            ),
          ),
        ],
      ),
    );
  }
}
