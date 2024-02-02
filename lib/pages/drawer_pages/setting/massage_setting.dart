// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hoopa_book/Widget/floating_action.dart';
import 'package:hoopa_book/Widget/haders_bar.dart';
import 'package:hoopa_book/Widget/programing_folder.dart';
import 'package:hoopa_book/pages/drawer_pages/setting/mother_setting.dart';

class massage_setting extends StatelessWidget {
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
              titel_hady_bar: "Massage Setting",
              icon_hady_bar: button_halp(),
              font_size: 20.0,
              font_weight: FontWeight.normal,
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1 - 20.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  list_downloads_data(),
                  divider_setting(),
                  list_back_ground_color_chat(),
                  divider_setting(),
                  list_back_ground_image(),
                  divider_setting(),
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

class list_back_ground_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Back Ground Images ..!",
        style: TextStyle(
          color: mood_app ? Dtext_color : Ltext_color,
        ),
      ),
      subtitle: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              // src_image_back_droung = "images/imge.jpg";
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/imge.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "them 1",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              // src_image_back_droung = "images/imge1.jpg";
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/imge1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "them 2",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              // src_image_back_droung = "images/imge2.jpg";
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/imge2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "them 3",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              // src_image_back_droung = "images/imge3.webp";
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/imge3.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "them 4",
                      style: TextStyle(
                        color: mood_app ? Dtext_color : Ltext_color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Add Them"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class list_back_ground_color_chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Back Ground Color ..!",
        style: TextStyle(
          color: mood_app ? Dtext_color : Ltext_color,
        ),
      ),
      subtitle: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              // src_color_back_droung = Colors.red;
            },
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.color_lens,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Red..!",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              // src_color_back_droung = Colors.blue;
            },
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.color_lens,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Blue..!",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              // src_color_back_droung = Colors.green;
            },
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.color_lens,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Green..!",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              // src_color_back_droung = Colors.teal;
            },
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.color_lens,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Teal..!",
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add,
                  color: mood_app ? Dicon_color : Licon_color,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Add Color",
                  style: TextStyle(
                    color: mood_app ? Dtext_color : Ltext_color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class list_downloads_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Downloads ..!",
        style: TextStyle(
          color: mood_app ? Dtext_color : Ltext_color,
        ),
      ),
      subtitle: const radio_opion_dawnlods(),
    );
  }
}

class radio_opion_dawnlods extends StatefulWidget {
  const radio_opion_dawnlods({Key? key}) : super(key: key);

  @override
  State<radio_opion_dawnlods> createState() => _radio_opion_dawnlodsState();
}

class _radio_opion_dawnlodsState extends State<radio_opion_dawnlods>
    with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  int _value_downloads = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: _value_downloads,
              onChanged: (value) {
                setState(() {
                  _value_downloads = 1;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.photo_camera_back_outlined,
              color: mood_app ? Dicon_color : Licon_color,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              "Photos !",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: _value_downloads,
              onChanged: (value) {
                setState(() {
                  _value_downloads = 2;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.video_camera_back_outlined,
              color: mood_app ? Dicon_color : Licon_color,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              "Videos !",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 3,
              groupValue: _value_downloads,
              onChanged: (value) {
                setState(() {
                  _value_downloads = 3;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.music_note_outlined,
              color: mood_app ? Dicon_color : Licon_color,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              "Music !",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 4,
              groupValue: _value_downloads,
              onChanged: (value) {
                setState(() {
                  _value_downloads = 4;
                });
              },
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.folder_copy_outlined,
              color: mood_app ? Dicon_color : Licon_color,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              "Folders !",
              style: TextStyle(
                color: mood_app ? Dtext_color : Ltext_color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
