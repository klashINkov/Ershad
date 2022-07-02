//Done

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Colleges And Specialties/Done_Colleges.dart';

import 'package:ershad/main screens/Teachers/Done_teachers.dart';

import 'package:ershad/main screens/Map/Done_Map.dart';

import 'package:ershad/main screens/personal lost.dart';

import 'package:ershad/main screens/Teachers/Done_SignIn.dart';

import 'package:ershad/main screens/Teachers/Control/Done_T_Colleges.dart';

class temp
{

List < sts > Items =
  [

    sts ( str : "كلية الهندسة"                       , image : "pic/engineering college.png" ),
    sts ( str : "كلية العلوم"                        , image : "pic/sciences college.png" ),
    sts ( str : "كلية تكنولوجيا المعلومات و الاتصالات" , image : "pic/it college.png" ),
    sts ( str : "كلية الاعمال"                        , image : "pic/business  college.png" ),
    sts ( str : "كلية الاداب"                         , image : "pic/arts college.png" ),
    sts ( str : "كلية العلوم التربوية"               , image : "pic/educational sciences college.png" )

  ];

// Start Of Item Widget
Widget Item ( { required String txt1 , required String txt2 , required  double txt_pad , required double size1 , required double size2 } ) => Container
(

  margin : EdgeInsets . only ( bottom : 5 , left : 10 , right : 10 ),
  height : 220,

  decoration : BoxDecoration
  (

    color : Colors . black,
    borderRadius : BorderRadius . circular ( 200 ),
    image : DecorationImage
    (

      image : AssetImage ( "pic/pic1.png" ),
      fit : BoxFit . fill,
      repeat : ImageRepeat . noRepeat

    )

  ),

  child : Column
  (

    children :
    [

      Padding
      (

        padding : EdgeInsets . only ( top : 20 ),

        child : Text
        (

          txt1,

          style : TextStyle
          (

            color : Colors . white,
            fontWeight : FontWeight . bold,
            fontSize : size1

          )

        )

      ),

      Padding
      (

        padding : EdgeInsets . only ( top : txt_pad ),

        child : Center
        (

          child : Text
          (

            txt2,
            textAlign : TextAlign . center,

            style : TextStyle
            (

              color : Colors . white,
              fontWeight : FontWeight . bold,
              fontSize : size2

            )

          )

        )

      )

    ]

  )

);
// End Of Item Widget

// Start Of Arrows Widget
Widget Arrows ( { required double top , required double left , required IconData icon } ) => Padding
(

  padding : EdgeInsets . only (  top  : top , left : left ),
  child : Icon ( icon , color : Colors . black , size : 80 )

);
// End Of Arrows Widget

// Start Of Pic Widget
Widget Pic ( { required BuildContext context , required String image , required String txt } ) => Expanded
(

  flex : 5,

  child : InkWell
  (
    onTap : ( )
    {

      if ( txt == "مُدرس")
        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Signin ( ) ) ) ;

      else if ( txt == "إضافة أو تعديل بيانات مادة" )

        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Colleges ( ) ) ) ;

      else

        Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => colleges ( ) ) ) ;

    },

    child : Material
    (

      child : Ink . image
      (

        image : NetworkImage ( image ),
        width : 410,
        fit : BoxFit . fill,

        child : Padding
        (

          padding : EdgeInsets . only ( top : 280 ),

          child : Opacity
          (

            opacity : 0.6,

            child : Container
            (

              color : Colors . black,

              child : Text
              (

                txt,
                textAlign : TextAlign . center,

                style : TextStyle
                (

                  fontSize : 35,
                  fontWeight : FontWeight . bold,
                  color : Colors . white

                )

              )

            )

          )

        )

      )

    )

  )

);
// End Of Pic Widget

// Start Of sdfa Widget
Widget sdfa ( { required String text , required double size , required double top , required double left , required BuildContext context } ) => text == "المدرسين" || text == "المفقودات" ?
Opacity
(

  opacity : 0.7,

  child : Row
  (

    mainAxisAlignment : MainAxisAlignment . center,

    children :
    [

      InkWell
      (

        onTap :  ( )
        {

          if ( text ==  "المدرسين" )

            Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Teachers ( ) ) ) ;

          else

            Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Personal_Lost ( ) ) ) ;

        },

        child : Container
        (

          decoration : BoxDecoration
          (

            border : Border . all ( color : Colors . blueAccent . shade700 , width : 20 ),
            borderRadius : BorderRadius . only ( topLeft : Radius . circular ( 500 ) , bottomRight : Radius . circular ( 500 ) )

          ),

          child : Material
          (

            color : Colors . black,
            borderRadius : BorderRadius . only ( topLeft : Radius . circular ( 500 ) , bottomRight : Radius . circular ( 500 ) ),

            child : Ink . image
            (

              image : AssetImage ( "pic/pic1.png" ),
              height : 110,
              width : 300,
              fit : BoxFit . contain,

              child : Padding
              (

                padding : EdgeInsets . only ( top : top , left : left ),

                child : Text
                (

                  text,

                  style : TextStyle
                  (

                    fontSize : size,
                    color : Colors . white,
                    fontWeight : FontWeight . bold

                  )

                )

              )

            )

          )

        )

      )

    ]

  )

)
:
Opacity
(

  opacity : 0.7,

  child : Row
  (

    mainAxisAlignment : MainAxisAlignment . center,

    children :
    [

      InkWell
      (

        onTap :  ( )
        {

          if ( text == "الكليات و التخصصات" )

            Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Colleges ( ) ) ) ;

          else

            Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Map ( ) ) ) ;

        },

        child : Container
        (

          decoration : BoxDecoration
          (

            border : Border . all ( color : Colors . blueAccent . shade700 , width : 20 ),
            borderRadius : BorderRadius . only ( topRight : Radius . circular ( 500 ) , bottomLeft : Radius . circular ( 500 ) )

          ),

          child : Material
          (

            color : Colors . black,
            borderRadius : BorderRadius . only ( topRight : Radius . circular ( 500 ) , bottomLeft : Radius . circular ( 500 ) ),

            child : Ink . image
            (
              image : AssetImage ( "pic/pic1.png" ),
              height : 110,
              width : 300,
              fit : BoxFit . contain,

              child : Padding
              (

                padding : EdgeInsets . only ( top : top , left : left ),

                child : Text
                (

                  text,

                  style : TextStyle
                  (

                    fontSize : size,
                    color : Colors . white,
                    fontWeight : FontWeight . bold

                  )

                )

              )

            )

          )

        )

      )

    ]

  )

);
// End Of sdfa Widget

// Start Of sdfa Widget
Widget Text_Field ( { required String label , required String hint } ) => label == "اسم المادة" || label == "رقم المادة" ?
Container
(

  padding : EdgeInsets . symmetric ( horizontal : 35 ),
  margin : EdgeInsets . only ( bottom : 15 ),

  child : TextField
  (

    style : TextStyle ( fontSize : 25 , color : Colors . white ),
    textAlign : TextAlign . center,

    decoration : InputDecoration
    (

      border : OutlineInputBorder ( ),
      labelText : label,

      labelStyle : TextStyle ( color : Colors . white , fontSize : 25 ),

      floatingLabelStyle : TextStyle ( color : Colors . white , fontSize : 25 )

    )

  )

)
:
Container
(

  padding : EdgeInsets . symmetric ( horizontal : 35 ),
  margin : EdgeInsets . only ( bottom : 15 ),

  child : TextField
  (

    style : TextStyle ( fontSize : 25 , color : Colors . white ),
    textAlign : TextAlign . center,

    decoration : InputDecoration
    (

      border : OutlineInputBorder ( ),
      labelText : label,
      hintText : hint,

      labelStyle : TextStyle ( color : Colors . white , fontSize : 25 ),

      floatingLabelStyle : TextStyle ( color : Colors . white , fontSize : 25 ),

      hintStyle : TextStyle( color : Colors . white, fontSize : 25  )



    )

  )

);
// End Of sdfa Widget

// Start Of TXT Function
Widget TXT ( { required String txt , required double size , required double margin_top , required double margin_left , } ) => txt == "المجمع الرياضي" || txt == "كلية الاعمال" || txt == "القبول و التسحيل" || txt == "كلية\nالعلوم" || txt == "رئاسة\nالجامعة" || txt == "المالية" || txt == "عمادة شؤون\nالطلبة" ?
Opacity
(

  opacity : 0.7,

  child : RotatedBox
  (

    quarterTurns : 1,

    child : Container
    (

      margin : EdgeInsets . only ( bottom : margin_top , left : margin_left ),
      padding : EdgeInsets . only ( left : 10 , right : 10 ),

      decoration : BoxDecoration
      (

          color : Colors . black,
          border : Border . all ( color : Colors . white , width : 10 ),
          borderRadius : BorderRadius . circular ( 50 )

      ),

      child : InkWell
      (

        onTap : ( ) { },

        child : Text
        (

          txt,
          textAlign : TextAlign . center,

          style : TextStyle
          (

            color : Colors . white,
            fontSize : size

          )

        )

      )

    )

  )

)
:
Opacity
(

  opacity : 0.7,

  child : Container
  (

    margin : EdgeInsets . only ( top : margin_top , left : margin_left ),
    padding : EdgeInsets . only ( left : 10 , right : 10 ),

    decoration : BoxDecoration
    (

      color : Colors . black,
      border : Border . all ( color : Colors . white , width : 10 ),
      borderRadius : BorderRadius . circular ( 50 )

    ),

    child : InkWell
    (

      onTap : ( ) { },

      child : Text
      (

        txt,
        textAlign : TextAlign . center,

        style : TextStyle
        (

          color : Colors . white,
          fontSize : size

        )

      )

    )

  )

);

// End Of TXT Function

}

class sts
{

  String str ;

  String image ;

  sts ( { required this . str , required this . image  } ) ;

}


