// ignore_for_file: file_names

/// Run App In Main File *[HOOPA_APP] => Go To Splash Scren *[splash_scren]
/// (src) Code => lib\pages\splash_scren.dart

/*
 Timer 5 minutes , GO To Logon page *[logen_page] {

  2 Choose --->

  Choose 1 Logon =>{
    (src) Code => lib\pages\login_page.dart
    If Email = Trun => Go To Hoopa Book
    } Else {
      No Go To The App
      }
    /// (src) Code => lib\hoopa_book.dart
    
    
  Choose 2 Singon =>{
    Go To The Register Page 
     (src) Code => lib\pages\register_pages

   5 Choose ---> 

   Choose 1 Register py Add Account On Hopa Book ;
    (src) Code => lib\pages\register_pages\add_accunt.dart

   Choose 2 Register py FaceBook Account On Meta Server
    (src) Code => lib\pages\register_pages\register_py_facebook.dart

   Choose 3 Register py Twitter Account On Meta Server
    (src) Code => lib\pages\register_pages\register_py_twitter.dart

   Choose 4 Register py Gmail Account On Google Server
    (src) Code => lib\pages\register_pages\register_py_googel.dart

   Choose  Register py Include Account On Apple Server
    (src) Code => lib\pages\register_pages\register_py_ios.dart

  }

 }
 */

/// Register py Add Account On Hopa Book *[add_accunt] ===>
/*
 (Input & Save) Data On Fire Base
 1 - Input User First Name
 2 - Input User Last Name 
 3 - Input User Email Or Phone Namper
 4 - Input User Now Password
 5 - Input User Birth Data ( Day , Moment , Year )
*/

/// Register py FaceBook Account *[register_py_facebook] ===>
/*
 (Input & Save) Data From Meta Server
 1 - Input First Name In  Meta
 2 - Input Last Name In  Meta
 3 - Input FaceBook Email
 4 - Input FaceBook Password
 5 - Input Birth Data ( Day , Moment , Year ) In Meta Sever
*/

/// Register py Twitter Accunt *[register_py_twitter] ===>
/*
 (Input & Save) Data From Meta Selver
 1 - Input Farst Name In  Meta
 2 - Input Last Name In  Meta
 3 - Input Twitter Email
 4 - Input Twitter Passwerd  
 5 - Input Birth Data ( Day , Moment , Year ) In Meta Selver
*/

/// Register py Gemail Accunt *[register_py_googel] ===>
/*
 (Input & Seve) Data From Googel  
 1 - Input Farst Name In  Googel
 2 - Input Last Name In  Googel
 3 - Input Gemail Email
 4 - Input Gemail Passwerd  
 5 - Input Birth Data ( Day , Moment , Year ) In Googel 
*/

/// Register py IOS Accunt *[register_py_ios] ===>
/*
 (Input & Seve) Data From Appel  
 1 - Input Farst Name In  Iclude
 2 - Input Last Name In  Iclude
 3 - Input Iclude Email
 4 - Input Iclude Passwerd  
 5 - Input Birth Data ( Day , Moment , Year ) In Iclude 
*/

/// Going To Hopa Book *[mother_class] ===>
/*
 Diatomaceous Hopa Book Page *[home] ==>
 1 - Hoopa App Bar 
 2 - Hoopa App Body
*/

/*
 Hopa App Bar *[hopa_app_par] ===>
 Appear In Hopa App Bar ===>
 1 - Drawer Buttom 
 2 - Text Hopa Book Logo 
 3 - Sersh buttom 
 4 - mood App Buttom
*/

/*
 Hopa App Body *[hopa_app_body] ===>
 Appear In Hopa App Body ===>
 1 - Bottom Navigation Bar 
 2 - All The Post Users 
*/

///  Bottom Navigation Bar
/*
(src) Code => lib\Widget\bottom_navigat.dart
 Navigation Is Pages App ===>
 1 - Hopa Book Page *[mother_class] 
  (src) Code => lib\hoopa_book.dart

 2 - User Homy *[home_page]
  (src) Code => lib\pages\drawer_pages\my_home.dart

 3 - Massege App *[message_app]
  (src) Code => lib\pages\drawer_pages\message_app\massage.dart

 4 - Add Post *[add_photo_post] , *[add_text_post]
  (src) Code => lib\Widget\post_folder.dart
*/


/// Post Users  ===> 
 /*
  User Can App Post Enabled 
  1 - Text *[add_text_post]
  (src) Code => lib\Widget\post_folder.dart

  2 - photo *[add_photo_post]
  (src) Code => lib\Widget\post_folder.dart

  Post Desription ===>
  1 - User Photo
  2 - User Name 
  3 - Post Sawing Data 
  4 - User Adds Titel Post & Photo post (If Availability)
 */

/// Diatomaceous Hopa App Drawer *[drawer_menu] ===>
/*
 1 - InfoCard  ===> 
  Showing The User Name

 2 - drawed_home_botton
 Take User On User Home *[home_page]
  (scr) Code => lib\pages\drawer_pages\my_home.dart

 3 - drawed_message_botton 
 Take User On Hopa Massage App *[message_app]
  (src) Code => lib\pages\drawer_pages\message_app

 4 - drwaer_scersh_botton 
 Take User On Scersh Page *[search_opshin]
  (src) Code => lib\Widget\search_app.dart

 5 - drawed_favorites_button 
 Take User On Favorites Page *[favorite_page]
  (src) Code => lib\pages\drawer_pages\favorite_page.dart

 7 - drawer_notifications_button 
 Take User On  Page Notifications *[notifications_page]
  (src) Code => lib\pages\drawer_pages\notifications_page.dart

 8 - drawed_setting_button 
  Take User On  Page Setting *[setting_page]
  (src) Code => lib\pages\drawer_pages\setting\mother_setting.dart

 9 - logout_button 
  Take User On Logon Page *[logen_page]
  (src) Code => lib\pages\logen_page.dart

 10 - drawer_help_button *[opsin_user_help]
 Showing The User Container Help
  (src) Code => lib\Widget\opshins_windo.dart
*/