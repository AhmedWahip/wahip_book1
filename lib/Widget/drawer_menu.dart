// ignore_for_file: camel_case_types, unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/Widget/search_app.dart';
import 'package:hoopa_book/Widget/opshins_windo.dart';

class drawer_menu extends StatefulWidget {
  @override
  State<drawer_menu> createState() => _drawer_menuState();
}

class _drawer_menuState extends State<drawer_menu>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mood_app ? Ddrawer_color : Ldrawer_color,
      body: Container(
        width: 288.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: mood_app ? Ddrawer_color : Ldrawer_color,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 10.0),
              blurRadius: 50.0,
              color: Colors.black,
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const InfoCard(),
              // Here the icon is Rive asset because it’s animate asset
              // ignore: deprecated_member_use
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text(
                  "Browse".toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const drawed_divider(),
                  const drawed_home_botton(),
                  const drawed_divider(),
                  const drawed_message_botton(),
                  const drawed_divider(),
                  const drwaer_scersh_botton(),
                  const drawed_divider(),
                  const drawed_favorites_button(),
                  const drawed_divider(),
                  const drawer_notifications_button(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                    child: Text(
                      "HISTORY".toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white70,
                          ),
                    ),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  drawed_divider(),
                  drawed_setting_button(),
                  drawed_divider(),
                  logout_button(),
                  drawed_divider(),
                  drawer_help_button(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class drawed_home_botton extends StatelessWidget {
  const drawed_home_botton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed("home_page");
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.person_outline,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Person",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class drawed_message_botton extends StatelessWidget {
  const drawed_message_botton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed("splash_massegs_scren");
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.message_outlined,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Message",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class drawed_divider extends StatelessWidget {
  const drawed_divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Divider(
        color: Colors.white24,
        height: 1,
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0x3CFFFFFF),
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "${ferst_name.text} ${last_name.text}",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        "${email.text}",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class drwaer_scersh_botton extends StatelessWidget {
  const drwaer_scersh_botton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showSearch(
          context: context,
          delegate: search_opshin(),
        );
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Search",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class drawed_favorites_button extends StatelessWidget {
  const drawed_favorites_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed("favorite_page");
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.favorite_border,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Favorite",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class drawer_help_button extends StatelessWidget {
  const drawer_help_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        opsin_user_help(context);
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.help_outline,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Halp",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class logout_button extends StatefulWidget {
  const logout_button({Key? key}) : super(key: key);

  @override
  State<logout_button> createState() => _logout_buttonState();
}

class _logout_buttonState extends State<logout_button> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed("logen_page");
        setState(() {
          xoffset = 0;
          yoffset = 0;
          isDrawerOpen = false;
        });
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.logout,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Log out",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class drawer_notifications_button extends StatelessWidget {
  const drawer_notifications_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed("notifications_page");
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.notifications_none,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Notifications",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

class drawed_setting_button extends StatelessWidget {
  const drawed_setting_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed("setting_page");
      },
      leading: const SizedBox(
        height: 43,
        width: 34,
        child: Icon(
          Icons.settings_outlined,
          color: Colors.white,
          size: 25.0,
        ),
      ),
      title: const Text(
        "Settings",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
