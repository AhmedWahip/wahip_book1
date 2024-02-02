// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unused_element, camel_case_types, prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:flutter_img_picker/file_picker.dart';

//  Drawer opshen ---->

/// If *[isDrawerOpen] = False => Drawer Page Close ;
/// If *[isDrawerOpen] = True => Drawer Page Open ;
/// If *[isDrawerOpen] = False On Pressed of The Icon *[sort_sharp] => *[isDrawerOpen] = Open ;
/// If *[isDrawerOpen] = True On Pressed of The Icon *[close] => *[isDrawerOpen] = Close ;

// Vieo User On Hoopa Book Page ;
// Devolper (src) => Lib Folder / hoopa_book ;

double xoffset = 0;
double yoffset = 0;
bool isDrawerOpen = false;

// _____________________________________________________________________________

// Mood App ---->
bool mood_app = false;

// If (mood_app) = False => All Them The App = Lighet Mood ;
// If (mood_app) = True => All Them The App => Lighet Mood ;

// Vieo User On All The Pages App
// Devolper (src) => On The Folder ;

// 1- Lighet Mood

Icon Licon_mood = Icon(
  Icons.light_mode,
);

Color LBG_color = Color(0xFFFFFFFF);

Color Licon_color = Color(0xFF000000);

Color Ltext_color = Color(0xFF000000);

Color Ldrawer_color = Color(0xFFFF6464);

Color Lpost_color = Color(0xFFFFFFFF);

//  2- Dark Mood

Icon Dicon_mood = Icon(
  Icons.dark_mode,
);

Color DBG_color = Color(0xFF000000);

Color Dicon_color = Color(0xFFFFFFFF);

Color DShadow_color = Color(0xFF9E9E9E);

Color LShadow_color = Color(0xFF000000);

Color Dtext_color = Color(0xFFFFFFFF);

Color Ddrawer_color = Color(0xF13F3744);

Color Dpost_color = Color(0xFF000000);

// _____________________________________________________________________________

// Icons Check Yor Email ---->

var check_email;

// If Email Tyep & Passwerd Tyep =  False => (check_email) = (false_email) ;
// If Email Tyep & Passwerd Tyep =  True => (check_email) = (trnu_email) ;

// Vieo User On Login Page
// Devolper (src) => lib\Widget\opshins_windo.dart ;

Icon trnu_email = Icon(
  Icons.check_circle_outline,
  size: 100.0,
  color: Color(0xFF3F3744),
);

Icon false_email = Icon(
  Icons.cancel_outlined,
  size: 100.0,
  color: Color(0xFF3F3744),
);

// _____________________________________________________________________________

// (Input & Save) User Data ---->

// 1- Input Date On The HoopaBook ;

// Vieo User On Register Page ;
// Devolper (src) => lib\pages\register_pages\add_accunt.dart;

TextEditingController ferst_name = TextEditingController();

TextEditingController last_name = TextEditingController();

TextEditingController email = TextEditingController();

TextEditingController biography = TextEditingController();

TextEditingController passwerd = TextEditingController();

TextEditingController agen_passwerd = TextEditingController();

// 2- Input Date On The FaceBook ;

// Vieo User On Register Py FaceBook Page ;
// Devolper (src) => lib\pages\register_pages\register_py_facebook.dart;

TextEditingController facebook_email = TextEditingController();

TextEditingController facebook_passwewrd = TextEditingController();

// 3- Input Date On The Gmail ;

// Vieo User On Register Py Googel Page ;
// Devolper (src) => lib\pages\register_pages\register_py_googel.dart;

TextEditingController googel_email = TextEditingController();

TextEditingController googel_passwewrd = TextEditingController();

// 4- Input Date On The Iclad ;

// Vieo User On  Register Py IClude Page ;
// Devolper (src) => lib\pages\register_pages\register_py_ios.dart;

TextEditingController ios_email = TextEditingController();

TextEditingController ios_passwewrd = TextEditingController();

// 5- Input Date On The Twitter ;

// Vieo User On  Register Py TwitterPage ;
// Devolper (src) => lib\pages\register_pages\register_py_twitter.dart;

TextEditingController twitter_email = TextEditingController();

TextEditingController twitter_passwewrd = TextEditingController();

// _____________________________________________________________________________

// Borders opein ---->

// Vieo User On  Register Page & Login opishen ;
// Devolper (src) =>lib\pages\register_pages\add_accunt.dart & lib\Widget\opshins_windo.dart

Border border_check_ferst_name = Border();
Border border_check_last_name = Border();
Border border_check_passwer = Border();
Border border_check_agen_passwerd = Border();
Border border_check_email = Border();
Border border_check_berth_data = Border();

// Border Erorr

Border border_erorr = Border.all(
  color: Colors.red,
  width: 2.0,
);

// Vieo User On  Register Page & ;
// Devolper (src) =>lib\pages\register_pages\add_accunt.dart

String? view_erorr;

String text_erorr_all = "Pless Enter You Data";
String first_name_erorr = "Pless Enter The Firest Name !";
String last_name_erorr = "Pless Enter The Last Name !";
String user_name_erorr = "Pless Enter The User Name !";
String email_erorr = "Pless Enter The Email !";
String passwerd_erorr = "Pless Enter The Passwerd !";
String agen_passwerd_erorr = "Pless Agen Passwerd !";
String passwerd_agen_passwed_erorr =
    "Pless Enter The passwerd = Agen Passwerd !";
String berth_data_erorr = "Pless Enter The Berth Data";

// _____________________________________________________________________________

// Post Date ---->

// Vieo User On  Hopa Book Page ;
// Devolper (src) =>lib\Widget\post_folder.dart ;

TextEditingController titel_post = TextEditingController();

var app_post;

// post On Favorite ---->

/// On Pressed Of The Fevorite Buttim => add_the_post_on_favorite_page = True;
///On Pressed Of The "Save Post" => add_the_post_on_favorite_page = True

/// If *[add_the_post_on_favorite_page] = False => vieo  *[No_post_fevorite];
/// If *[add_the_post_on_favorite_page] = True => vieo *[app_post];

bool add_the_post_on_favorite_page = false;

Column No_post_fevorite = Column(
  children: const <Widget>[
    Icon(
      Icons.favorite_border_sharp,
    ),
    Text("No favorite"),
  ],
);

// Favorit Icon Post Opshin ---->

/// Vieo User On  Container Post ;
/// Devolper (src) => lib\Widget\post_folder.dart ;

bool favorit_opshin = false;

/// If *[favorit_opshin] = False => Favorite Post Icon = *[favorit_fools] ;
/// If *[favorit_opshin] = True => Favorite post Icon = *[favorit_true] ;

int favrit_post = 0;

/// (favrit_post) = All Pepol Add Favorite On The Post ;

Icon favorit_true = Icon(
  Icons.favorite,
  color: Colors.red,
);
Icon favorit_fools = Icon(
  Icons.favorite_border,
  color: Colors.red,
);

// _____________________________________________________________________________

// Icons Imge App ---->

// 1- Hoopa Book Logo --->

Image hoopa_book_logo = Image(
  image: AssetImage("icons/hoopa_book_logo.png"),
  fit: BoxFit.cover,
);

// 2- All FaceBook Icons --->

Image facbook_icon1 = Image(
  image: AssetImage("icons/icons8-facebook-circled-50.png"),
  fit: BoxFit.cover,
);

Image facbook_icon2 = Image(
  image: AssetImage("icons/icons8-facebook-circled-64.png"),
  fit: BoxFit.cover,
);

// 3- All Twitter Icons --->

Image twitter_icon1 = Image(
  image: AssetImage("icons/icons8-twitter-50.png"),
  fit: BoxFit.cover,
);

Image twitter_icon2 = Image(
  image: AssetImage("icons/icons8-twitter-64.png"),
  fit: BoxFit.cover,
);

// 4- All Googel Icons --->

Image googel_icon1 = Image(
  image: AssetImage("icons/icons8-chrome-50 (1).png"),
  fit: BoxFit.cover,
);

Image googel_icon2 = Image(
  image: AssetImage("icons/icons8-chrome-64.png"),
  fit: BoxFit.fill,
);

// 5- All IOS Icons --->

Image ios_icon1 = Image(
  image: AssetImage("icons/icons8-apple-logo-30.png"),
  fit: BoxFit.cover,
);

Image ios_icon2 = Image(
  image: AssetImage("icons/icons8-ios-logo-64.png"),
  fit: BoxFit.cover,
);

// _____________________________________________________________________________

// Date of birth --->

// Mene Mome & Max mome Of The Birth Year User ;
/// Max mome In year 1980 => Age Bager User App = 53 year ;
/// Mene Mome In year 2010 => Age Smoler User App = 13 year ;
/// Vieo User On Add Accunt Page ;
/// Devolper (src) => lib\pages\register_pages\add_accunt.dart ;
/// *[input_user_Birth_yaer] ;

// 1- Birth Day

final birthday = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
  "16",
  "17",
  "18",
  "19",
  "20",
  "21",
  "22",
  "23",
  "24",
  "25",
  "26",
  "27",
  "28",
  "29",
  "30",
];

DropdownMenuItem<String> build_birth_day(String day) => DropdownMenuItem(
      value: day,
      child: Text(
        day,
        style: const TextStyle(
          fontSize: 15.0,
        ),
      ),
    );

// 2- Birth Month

final birthmonth = _birtmonth.keys;

Map<String, int> _birtmonth = {
  "January": 1,
  "February": 2,
  "March": 3,
  "April": 4,
  "May": 5,
  "June": 6,
  "July": 7,
  "August": 8,
  "September": 9,
  "October": 10,
  "November": 11,
  "December": 12,
};

DropdownMenuItem<String> build_birth_month(String month) => DropdownMenuItem(
      value: month,
      child: Text(
        month,
        style: const TextStyle(
          fontSize: 15.0,
        ),
      ),
    );

// 3- Birth Year

final birth_year = [
  "1970",
  "1971",
  "1972",
  "1973",
  "1974",
  "1975",
  "1976",
  "1977",
  "1978",
  "1979",
  "1980",
  "1981",
  "1982",
  "1983",
  "1984",
  "1985",
  "1986",
  "1987",
  "1988",
  "1989",
  "1990",
  "1991",
  "1992",
  "1993",
  "1994",
  "1995",
  "1996",
  "1997",
  "1998",
  "1999",
  "2000",
  "2001",
  "2002",
  "2003",
  "2004",
  "2005",
  "2006",
  "2007",
  "2008",
  "2009",
  "2010",
];

DropdownMenuItem<String> build_birth_year(String year) => DropdownMenuItem(
      value: year,
      child: Text(
        year,
        style: const TextStyle(
          fontSize: 15.0,
        ),
      ),
    );

// _____________________________________________________________________________

// Funchen Sersh Of The Setting Page ===>
/// Vieo User On Setting Page ;
/// Devolper (src) => lib\pages\drawer_pages\setting\mother_setting.dart ;
/// *[search_setting_bar]

TextEditingController setting_sersh = TextEditingController();

// _____________________________________________________________________________

// Vali Date Email ===>

// _____________________________________________________________________________