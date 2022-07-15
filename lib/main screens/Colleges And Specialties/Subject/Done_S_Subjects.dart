// Done

// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_S_Subject.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// Start Of Subjects Class
class S_Subjects extends StatelessWidget
{

  var x = temp ( ) ;
  String Specialty_Name , College_Name , Desc ;
  bool is_empty ;
  List < dynamic > subjects ;

  S_Subjects ( { required this . Specialty_Name , required this . College_Name , required this . Desc , required this . subjects , required this . is_empty  } ) ;

  // Start of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Padding
        (

          padding : EdgeInsets . only ( top : 10  ),
          child : Text ( Specialty_Name , maxLines : 2 , textAlign : TextAlign . center , style : TextStyle ( fontSize : 18 , color : Colors . white , fontWeight : FontWeight . bold ) )

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

          decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),

          child : Column
          (

            children :
            [

              // Start Of Description
              Stack
              (

                children :
                [

                  // Start Of Description Text
                  Container
                  (

                    height : 400,
                    margin : EdgeInsets . only ( top : 90 , left : 15 , right : 25 ),

                    decoration : BoxDecoration
                    (

                      border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                      borderRadius : BorderRadius . circular ( 50 ),

                    ),

                    child : Padding
                    (

                      padding : EdgeInsets . only ( top : 5 , left : 22 , right : 22 , bottom : 8 ),

                      child : SingleChildScrollView
                      (

                        child : Column
                        (

                          children :
                          [

                            // Start Of نبذه عن التخصص
                            Text ( "نبذة عن التخصص" , textAlign : TextAlign . center , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) ),
                            // End Of نبذه عن التخصص

                            // Start Of Description Text
                            Text ( Desc , textAlign : TextAlign . center , style : TextStyle ( fontSize : 20 , fontWeight : FontWeight . bold , color : Colors . white ) )
                            // End Of Description Text

                          ]

                        )

                      )

                    )

                  ),
                  // End Of Description Text

                  // Start Of Arrow Up
                  x . Arrows ( top : 100 , left : 341 , icon : Icons . keyboard_arrow_up ),
                  // End Of Arrow Up

                  // Start Of Arrow down
                  x . Arrows (top : 400 , left : 341 , icon : Icons . keyboard_arrow_down )
                  // End Of Arrow down

                ]

              ),
              // End Of Description

              // STart Of List View
              Stack
              (

                children :
                [

                  // Start Of مواد التخصص الاجبارية
                  Padding
                  (

                    padding : EdgeInsets . only ( top : 40 ),

                    child : Center
                    (

                      child : Text ( "مواد التخصص" , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) )

                    )

                  ),
                  // End Of مواد التخصص الاجبارية

                  // STart Of List View
                  Container
                  (

                    height : is_empty ? 200 : 600,
                    width : 400 ,

                    margin : EdgeInsets . only ( top : 25 , left : 15 , right : 25 ),

                    decoration : BoxDecoration
                    (

                      border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                      borderRadius : BorderRadius . circular ( 50 ),

                    ),

                    child : Padding
                    (

                      padding : EdgeInsets . only ( top : 45 , bottom : 10 ),

                      child :  is_empty ?
                      Center(
                        child: Text
                        (

                          "لم يتم اضافة مواد من قبل مدرسين هذا التخصص بعد",
                          textAlign : TextAlign . center,
                          style : TextStyle
                          (

                            fontWeight : FontWeight . bold ,
                            color : Colors . white,
                            fontSize : 25

                          ),

                        ),
                      ) :
                      list_view ( )

                    )

                  ),
                  // End Of List View

                  // Start Of Arrow Up
                  is_empty ? SizedBox( ) : x . Arrows (top : 45 , left : 341 , icon : Icons . keyboard_arrow_up ),
                  // End Of Arrow Up

                  // Start Of Arrow down
                  is_empty ? SizedBox( ) : x . Arrows (top : 530 , left : 341 , icon : Icons . keyboard_arrow_down )
                  // End Of Arrow down

                ]

              )
              // End Of List View

            ]

          )

        )

      )

    );

  }
  // End of build Widget

  // Start of list_view Widget
  Widget list_view ( )  => ListView . builder
  (

    padding : EdgeInsets . only ( top : 0 ),
    itemCount : subjects . length,

    itemBuilder : ( context , index )
    {

      String Subject_Name = subjects [ index ] ;

      return ListTile
      (

        onTap : ( ) { List_View_On_Tap ( Subject_Name , context ) ; },

        title : Container
        (

          padding : EdgeInsets . only ( top : 10 , bottom : 10  ),
          margin : EdgeInsets . only ( bottom : 10  ),

          decoration : BoxDecoration
          (

            color : Colors . black,
            border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
            borderRadius : BorderRadius . circular ( 40 )

          ),

          child : Text ( Subject_Name , style : TextStyle ( fontSize : 16 , color : Colors . white , fontWeight : FontWeight . bold ) , textAlign : TextAlign . center )

        )

      );

    }

  );
  // End of list_view Widget

  // Start of List_View_On_Tap Function
  void List_View_On_Tap ( String Subject_Name , BuildContext context ) async
  {


    var varibel = await FirebaseFirestore . instance . collection ( "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ) . doc ( Subject_Name ) . get ( ) ;

    Navigator. push
    (

      context , MaterialPageRoute
      (

        builder : ( context ) => S_Subject
        (

          Name : Subject_Name,
          Previous : varibel [ "Previous" ],
          NO : varibel [ "NO" ] ,
          syllabus : "fdfdf",
          Credit_hours : varibel [ "Credit_hours" ] ,
          Type : varibel [ "Type" ] ,
          DESC : varibel [ "DESC" ]

        )

      )

   );

  }
  // End of List_View_On_Tap Function

}
// End Of Subjects Class