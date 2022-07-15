// Done

// ignore_for_file: must_be_immutab, use_key_in_widget_constructorsle, use_key_in_widget_constructors, must_be_immutable, camel_types, prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_literals_to_create_immutables, camel_case_types, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Done_SignIn.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:firebase_auth/firebase_auth.dart';

// Start Of _Teachers class
class Teachers extends StatefulWidget
{

  String Image1_url , Image2_Url , Image1_text , Image2text ;
  Teachers ( { required this . Image1_url , required this . Image1_text , required this . Image2_Url , required this . Image2text  } ) ;

  @override
  State < Teachers > createState ( ) => _Teachers ( Image1_url : Image1_url , Image1_text : Image1_text , Image2_Url : Image2_Url , Image2text : Image2text ) ;

}

class _Teachers extends State < Teachers >
{

  String Image1_url , Image2_Url , Image1_text , Image2text ;
  _Teachers ( { required this . Image1_url , required this . Image1_text , required this . Image2_Url , required this . Image2text  } ) ;
  var x = temp ( ) ;
  bool  ? islog ;


  @override
  void initState ( )
  {

    super . initState ( ) ;

    var user = FirebaseAuth . instance . currentUser ;

    if ( user == null)
    {
      islog = false ;
    }

    else
    {
      islog = true ;
    }

  }

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : Image1_text == "إضافة أو تعديل بيانات المدرس" ? AppBar
      (

        backgroundColor : Colors . transparent,
        elevation : 0,

        actions :
        [

          Container
          (

            margin : EdgeInsets . only ( right : 90 ),
            padding : EdgeInsets . all ( 5.0 ),

            decoration : BoxDecoration
            (

              border : Border . all ( width : 5  , color : Colors . blueAccent . shade700 ),
              borderRadius : BorderRadius . circular ( 40 ),
              color : Colors . black

            ),


            child : InkWell
            (

              onTap : ( ) async
              {

                await FirebaseAuth . instance . signOut ( ) ;
                Navigator . pushReplacement ( context , MaterialPageRoute ( builder : ( _ ) => Signin ( ) ) ) ;

              },

              child : Text ( "تسجيل الخروج" , style : TextStyle ( color : Colors . white , fontSize : 20 , fontWeight : FontWeight . bold ) )

            )

          ),


          IconButton
          (

            onPressed : ( ) { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ):

      AppBar ( backgroundColor : Colors . transparent , elevation : 0 ),

      body : Container
      (

        color : Colors . green . shade900,

        child : Column
        (

          children :
          [

            x . Pic ( context : context , image : Image1_url , txt : Image1_text , flag : islog! ),

            x . Pic ( context : context , image : Image2_Url , txt : Image2text , flag : islog! ),

          ]

        )

      )

    );

  }

}
// End Of _Teachers class