// Done

// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_Subject Syllabus.dart';

// ٍStart Of Subject Class
class Subject extends StatelessWidget
{

  final String Name , NO , Previous , Type , syllabus , DESC ;
  final int Credit_hours ;

  Subject ( { required this . Name , required this . NO , required this . Previous , required this . Type , required this . Credit_hours , required this . syllabus , required this . DESC } ) ;

  var x = temp ( ) ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title : Column
        (

          children :
          [

            Text ( "اسم المادة",   style : TextStyle ( fontSize : 20 , color : Colors . white , fontWeight : FontWeight . bold ) ),

            Text ( Name , style : TextStyle ( fontSize : 16 , color : Colors . white , fontWeight : FontWeight . bold ) )

          ]

        ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true,

        actions :
        [

          IconButton
          (

            onPressed : ( ) { Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ; },

            icon : Icon ( Icons . home , color : Colors . white , size : 40 )

          )

        ]

      ),

      body : SingleChildScrollView
      (

        child : Container
        (

          decoration : BoxDecoration ( gradient :  LinearGradient ( colors : [ Color (0xff780206) , Color(0xFF061161) ] ) ),
          padding : EdgeInsets . only ( top : 100 ),

          child : Column
          (

            children :
            [

              // Start Of رقم المادة
              x . Item ( txt1 : "رقم المادة" , txt2 : NO , txt_pad : 90 , size1 : 30 , size2 : 30 ),
              // End Of رقم المادة

              // Start Of المتطلب السابق للمادة
              x . Item ( txt1 : "المتطلب السابق للمادة" , txt2 : Previous , txt_pad : 85 , size1 : 30 , size2 : 18 ),
              // End Of المتطلب السابق للمادة

              // Start Of االساعات المعتمدة
              x . Item ( txt1 : "االساعات المعتمدة" , txt2 : Credit_hours . toString( ) , txt_pad : 85 , size1 : 30 , size2 : 30 ),
              // End Of االساعات المعتمدة

              // Start Of االساعات المعتمدة
              x . Item ( txt1 : "نوع المادة" , txt2 : Type . toString( ) , txt_pad : 85 , size1 : 30 , size2 : 30 ),
              // End Of االساعات المعتمدة

              // Start Of وصف المساق
              Stack
              (

                children :
                [

                  // Start Text of نص وصف المساق
                  Container
                  (

                    height : 320,
                    margin : EdgeInsets . only ( left : 20 , right : 20 , top : 15 , bottom : 15 ),

                    decoration : BoxDecoration
                    (

                      border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                      borderRadius : BorderRadius . circular ( 50 ),

                    ),

                    child : Padding
                    (

                      padding : EdgeInsets . only (  top : 10 , bottom : 50 , left : 40 , right : 22 ),

                      child : SingleChildScrollView
                      (

                        child : Column
                        (

                          children :
                          [

                            // Start Of وصف المساق
                            Text ( "وصف المساق" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . white ) ),
                            // End Of وصف المساق

                            // Start Of Description Text
                            Text ( DESC , textAlign : TextAlign . right , style : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . white ) )
                            // End Of Description Text

                          ]

                        )

                      )

                    )

                  ),
                  // End Text of نص وصف المساق

                  // Start OF Link خطة المادة
                  Container
                  (

                    padding : EdgeInsets . only ( top : 280 ),

                    child : FlatButton
                    (

                      onPressed : ( ) { Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Syllabus ( ) ) ) ; },

                      child : Center
                      (

                        child : Text ( "خطة المادة" ,  style : TextStyle ( color : Colors . blue , fontSize : 25 , fontWeight : FontWeight . bold , decoration : TextDecoration . underline ) )

                      )

                    )

                  ),
                  // End OF Link خطة المادة

                  // Start Of Arrow Up
                  x . Arrows ( top : 30 , left : 346 , icon : Icons . keyboard_arrow_up ),
                  // End Of Arrow Up

                  // Start Of Arrow down
                  x . Arrows ( top : 230 , left : 346 , icon : Icons . keyboard_arrow_down ),
                  // End Of Arrow down

                ]

              )
              // End Of وصف المساق

            ]

          )

        )

      )

    );

  }
// End Of build Widget

}
// End Of Subject Class