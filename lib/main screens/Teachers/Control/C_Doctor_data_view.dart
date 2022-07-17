// ignore_for_file: camel_case_types, must_be_immutable, unused_field, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:cloud_firestore/cloud_firestore.dart';



// Start Of _C_Doctor_data_View
class C_Doctor_data_view extends StatelessWidget
{

   String  Name  , Coll , Dept , Desc , Dgree , Offec , Contact ;

   C_Doctor_data_view ( {  required this . Name , required this . Coll , required this . Dept ,  required this . Desc , required this . Dgree , required this . Offec , required this . Contact  } ) ;

  var x = temp ( ) ;
  GlobalKey < FormState > formstate = new GlobalKey < FormState > ( ) ;

  // Start Of Build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar :  AppBar
      (

        backgroundColor : Colors . transparent,
        elevation : 0,

        actions :
        [

          IconButton
          (

            onPressed : ( ) { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : Container
      (

        height : 684,
        padding : EdgeInsets . symmetric ( horizontal : 15 ),

        decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),

        child : ListView
        (

          children :
          [

            Form
            (

              key : formstate,

              child : Column
              (

                children :
                [

                  x . TexT ( text : Name , label : "الاسم"  ),

                  SizedBox ( height : 25 ),

                  x . TexT ( text : Coll , label : "الكلية"  ),

                  SizedBox ( height : 25 ),

                  x . TexT ( text : Dept , label : "القسم"  ),

                  SizedBox ( height : 25 ),

                  x . TexT ( text : Dgree , label : "الدرجة الجامعية"  ),

                  SizedBox ( height : 25 ),

                  x . TexT ( text : Offec , label : "عنوان المكتب"  ),

                  SizedBox ( height : 25 ),

                  x . TexT ( text : Contact , label : "وسيلة التواصل"  ),

                  SizedBox ( height : 25 ),
                  x . TexT ( text : Desc , label : "النبذه"  ),

                  SizedBox ( height : 25 ),

                ]

              )

            )

          ]

        )

      )

    );

  }
  // End Of Build Widget

}
// End Of _C_Doctor_data_View