// Done

// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main%20screens/Teachers/Control/Subjects/Add_Subjects.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_S_Subject.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// Start Of Subjects Class
class C_Subjects extends StatelessWidget
{

  var x = temp ( ) ;
  String Specialty_Name , College_Name ;
  bool is_empty ;
  int num ;
  List < dynamic > subjects ;

  C_Subjects ( { required this . Specialty_Name , required this . College_Name , required this . subjects , required this . is_empty , required this . num } ) ;

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

          padding : EdgeInsets . only ( top : 10 ),
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

      body : Container
      (

        decoration : BoxDecoration ( gradient : LinearGradient ( colors : [ Color ( 0xff780206 ) , Color ( 0xFF061161 ) ] ) ),

        child : Column
        (

          children :
          [

            // STart Of List View
            Padding
            (

              padding : EdgeInsets . only ( top : 70 ),

              child : Stack
              (

                children :
                [

                  // Start Of مواد التخصص
                  Padding
                  (

                    padding : EdgeInsets . only ( top : 40 ),

                    child : Center
                    (

                      child : Text ( "مواد التخصص" , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) )

                    )

                  ),
                  // End Of مواد التخصص

                  // STart Of List View
                  Container
                  (

                    height : 580,
                    margin : EdgeInsets . only ( top : 25 , left : 15 , right : 25 ),

                    decoration : BoxDecoration
                    (

                      border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                      borderRadius : BorderRadius . circular ( 50 )

                    ),

                    child : Padding
                    (

                      padding : EdgeInsets . only ( top : 50 ),

                      child : is_empty ?
                        Center
                        (

                          child : Padding
                          (

                            padding : EdgeInsets . symmetric ( horizontal : 20 ),

                            child : Text
                            (

                              "لم يقم احد مدرسين هذا التخصص باضافة اي بيانات لاي مادة بعد",
                              textAlign : TextAlign . center,
                              style : TextStyle
                              (

                                fontWeight : FontWeight . bold ,
                                color : Colors . white,
                                fontSize : 25

                              )

                            )

                          )

                        ):
                        list_view ( )

                    )

                  ),
                  // End Of List View

                  // Start Of Arrow Up
                  x .Arrows ( top : 50 , left : 342 , icon : Icons . keyboard_arrow_up ),
                  // End Of Arrow Up

                  // Start Of Arrow down
                  x .Arrows ( top : 490 , left : 343 , icon : Icons . keyboard_arrow_down ),
                  // End Of Arrow down

                  // Start Of Add subject Button
                  Padding
                  (

                    padding : EdgeInsets . only ( top : 550 , left : 15 ),

                    child : FloatingActionButton
                    (
                      backgroundColor : Colors . blueAccent . shade700,
                      onPressed : ( ) { Navigator . push ( context , MaterialPageRoute ( builder : ( _ ) => Add_Subjects ( ) ) ) ; },

                      child : Icon ( Icons . add )

                    )

                  )
                  // End Of Add subject Button

                ]

              )

            )
            // End Of List View

          ]

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

      final Subject_Name = subjects [ index ] ;

      return ListTile
      (

        onTap : ( ) { List_View_On_Tap ( Subject_Name , context ) ; },

        title : Container
        (

          padding : EdgeInsets . only ( top : 10 , bottom : 10 ),
          margin : EdgeInsets . only ( bottom : 10 ),

          decoration : BoxDecoration
          (

            color : Colors . black,
            border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
            borderRadius : BorderRadius . circular ( 50 )

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

    String path = "";

    if ( College_Name == "كلية الهندسة" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }

    if ( College_Name == "كلية العلوم" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }

    if ( College_Name == "كلية تكنولوجيا المعلومات و الاتصالات" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }

    if ( College_Name == "كلية الأعمال" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }

    if ( College_Name == "كلية الاداب" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }

    if ( College_Name == "كلية العلوم التربوية" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }


    var varibel = await FirebaseFirestore . instance . collection ( path ) . doc ( Subject_Name ) . get ( ) ;

    Navigator. push
    (

      context , MaterialPageRoute
      (

        builder : ( context ) => S_Subject
        (

          Name : Subject_Name,
          Previous : varibel [ "Previous" ],
          NO : varibel [ "NO" ] . toString ( ),
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