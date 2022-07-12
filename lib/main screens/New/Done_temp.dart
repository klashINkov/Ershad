//Done

// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, prefer_const_constructors, curly_braces_in_flow_control_structures, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Teachers/Teacher/Done_teachers.dart';

import 'package:ershad/main screens/Colleges And Specialties/Done_S_Colleges.dart';

import 'package:ershad/main screens/Map/Done_Map.dart';

import 'package:ershad/main screens/personal lost.dart';

import 'package:ershad/main screens/Teachers/Done_SignIn.dart';

import 'package:ershad/main screens/Teachers/Control/Done_C_Colleges.dart';

class temp
{

  List < sts > Items =
  [

    sts ( College_Name : "كلية الهندسة"                       , image : "pic/engineering college.png" ),
    sts ( College_Name : "كلية العلوم"                        , image : "pic/sciences college.png" ),
    sts ( College_Name : "كلية تكنولوجيا المعلومات و الاتصالات" , image : "pic/it college.png" ),
    sts ( College_Name : "كلية الأعمال"                        , image : "pic/business  college.png" ),
    sts ( College_Name : "كلية الاداب"                         , image : "pic/arts college.png" ),
    sts ( College_Name : "كلية العلوم التربوية"               , image : "pic/educational sciences college.png" )

  ];


  // Start Of Item Widget ==> لعرض بيانات المادة
  Widget Item ( { required String txt1 , required String txt2 , required  double txt_pad , required double size1 , required double size2 } ) => Container
  (

    margin : EdgeInsets . only ( bottom : 5 , left : 10 , right : 10 ),
    height : 220,

    decoration : BoxDecoration
    (

      color : Colors . black,
      borderRadius : BorderRadius . circular ( 200 ),
      image : DecorationImage ( image : AssetImage ( "pic/pic1.png" ) , fit : BoxFit . fill , repeat : ImageRepeat . noRepeat )

    ),

    child : Column
    (

      children :
      [

        Padding
        (

          padding : EdgeInsets . only ( top : 20 ),

          child : Text ( txt1 , style : TextStyle ( color : Colors . white , fontWeight : FontWeight . bold , fontSize : size1 ) )

        ),

        Padding
        (

          padding : EdgeInsets . only ( top : txt_pad ),

          child : Center
          (

            child : Text ( txt2 , textAlign : TextAlign . center , style : TextStyle ( color : Colors . white , fontWeight : FontWeight . bold , fontSize : size2 ) )

          )

        )

      ]

    )

  );
  // End Of Item Widget ==> لعرض بيانات المادة

  // Start Of Arrows Widget ==> اسهم القوائم
  Widget Arrows ( { required double top , required double left , required IconData icon } ) => Padding
  (

    padding : EdgeInsets . only (  top  : top , left : left ),
    child : Icon ( icon , color : Colors . white , size : 80 )

  );
  // End Of Arrows Widget ==> اسهم القوائم

  // Start Of Pic Widget ==> لقسم المدرسين
  Widget Pic ( { required BuildContext context , required String image , required String txt , required bool flag } ) => Expanded
  (

    flex : 5,

    child : InkWell
    (

      onTap : ( )
      {

        if ( txt == "مُدرس")
        {

          if ( flag == false )
              Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Signin ( ) ) ) ;

          else
              {

                Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Control ( ) ) ) ;

              }

        }

        else if ( txt == "إضافة أو تعديل بيانات مادة" )
          Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => T_Colleges ( ) ) ) ;

        else
          Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_T_Colleges ( ) ) ) ;

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

                child : Text ( txt , textAlign : TextAlign . center , style : TextStyle ( fontSize : 35 , fontWeight : FontWeight . bold , color : Colors . white ) )

              )

            )

          )

        )

      )

    )

  );
  // End Of Pic Widget ==> لقسم المدرسين

  // Start Of Text Field Widget ==> لمعلومات المواد و المدرسين
  Widget Text_Field ( { required String label , required String hint , required TextEditingController controller , required TextInputType keyboardType , required TextInputAction textInputAction , required int maxLines } ) =>
  Container
  (

    child : Opacity
    (

      opacity : 0.6,

      child : Stack
      (

        children :
        [

          Container
          (

            child : TextFormField
            (
              textInputAction : textInputAction,
              controller : controller,
              keyboardType : keyboardType,
              style : TextStyle ( fontSize : 25 , color : Colors . white ),
              textAlign : TextAlign . center,
              cursorColor : Colors . white,
              cursorWidth : 5,
              maxLines : maxLines,

              decoration : InputDecoration
              (

                filled : true,
                fillColor : Colors . black,

                enabledBorder : OutlineInputBorder
                (

                  borderRadius : BorderRadius . circular ( 30 ),
                  borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 )

                ),
                focusedBorder : OutlineInputBorder
                (

                  borderRadius : BorderRadius . circular ( 30 ),

                  borderSide : BorderSide ( color : Colors . blueAccent . shade700 , width : 5 )

                ),

                errorBorder : OutlineInputBorder
                (

                  borderRadius : BorderRadius . circular ( 30 ),
                  borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )

                ),
                focusedErrorBorder : OutlineInputBorder
                (

                  borderRadius : BorderRadius . circular ( 30 ),

                  borderSide : BorderSide ( color : Colors . red . shade900 , width : 5 )

                ),
                errorStyle : TextStyle ( fontSize : 18 , fontWeight : FontWeight . bold , color : Colors . yellow , backgroundColor : Colors . black ),

                hintText : hint,
                hintStyle : TextStyle ( color : Colors . white, fontSize : 20  ),

                labelText :  label,
                labelStyle : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ),
                floatingLabelStyle : TextStyle ( fontSize : 30 , backgroundColor : Colors . transparent , color : Colors . white ),
                floatingLabelAlignment : FloatingLabelAlignment . center

              ),

              validator : ( val )
              {

                if ( label == " البريد الالكتروني" )
                {

                  if  ( !( val! . contains ( "@" , 0 ) ) || !( val . contains ( "." , 0 )  ) )
                  {

                    return "صيغة البريد الالكتروني خاطئة" ;

                  }

                }

                else if ( label == " رقم المادة" )
                {

                  if ( val! . length < 7 )
                    return "لا يمكن ان تكون خانات رقم المادة اقل من 7 خانات" ;

                  if ( val . length > 7 )
                    return "لا يمكن ان يكون رقم المادة اكثر من 7 خانات" ;

                }

                else if ( val == "" )
                {

                  return "لا يمكن ان يكون حقل$label فارغا" ;

                }

                return null ;

              }

            )

          ),

          suffixIcon ( controller , label )

        ]

      )

    )

  );
  // End Of Text Field Widget ==> لمعلومات المواد و المدرسين

  // Start Of TXT Function ==> للخارطه
  Widget TXT ( { required String txt , required double size , required int quarterTurns , required double bottom , required double top , required double left  } ) =>
  Opacity
  (

    opacity : 0.7,

    child : RotatedBox
    (

      quarterTurns : quarterTurns,

      child : Container
      (

        margin : EdgeInsets . only ( bottom : bottom , top : top , left : left ),
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

          child : Text ( txt , textAlign : TextAlign . center , style : TextStyle ( color : Colors . white , fontSize : size ) )

        )

      )

    )

  );
  // End Of TXT Function ==> للخارطه

  // Start Of sdfa Widget ==> للصفحة الرئيسية
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

                  child : Text ( text , style : TextStyle ( fontSize : size , color : Colors . white , fontWeight : FontWeight . bold ) )

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
              Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => S_Colleges ( ) ) ) ;

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

                  child : Text ( text , style : TextStyle ( fontSize : size , color : Colors . white , fontWeight : FontWeight . bold ) )

                )

              )

            )

          )

        )

      ]

    )

  );
  // End Of sdfa Widget ==> للصفحة الرئيسية

  Widget suffixIcon ( TextEditingController controller , String txt )
  {

    if ( controller . text . isEmpty )
        return SizedBox ( ) ;

    else
      {

        if ( txt == "نبذه عن المادة " || txt == " نبذه عن المدرس" || txt == " وسيلة التواصل" )
          return Padding
          (

            padding : EdgeInsets . only ( left : 342 , top : 35 ),

            child : IconButton
            (

              icon : Icon ( Icons . close , color : Colors . white , size : 30 ),
              onPressed : ( ) => controller . clear ( )

            )

          );

        else
          return Padding
          (

            padding : EdgeInsets . only ( left : 340 , top : 10 ),

            child : IconButton
            (

              icon : Icon ( Icons . close , color : Colors . white , size : 30 ),
              onPressed : ( ) => controller . clear ( )

            )

          );

      }

  }

}

class sts
{

  String College_Name ;
  String image ;

  sts ( { required this . College_Name , required this . image  } ) ;

}


