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
  var Width ;
  var Height ;
  String Specialty_Name , College_Name ;
  List < dynamic > subjects ;

  C_Subjects ( { required this . Specialty_Name , required this . College_Name , required this . subjects } ) ;

  // Start of build Widget
  @override
  Widget build ( BuildContext context )
  {

    Width = MediaQuery . of ( context ) . size . width / 100 ;
    Height = MediaQuery . of ( context ) . size . height / 100 ;

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Padding
        (

          padding : EdgeInsets . only ( top : Height * 1.46  ),
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

            icon : Icon ( Icons . home , color : Colors . white , size : Width * 9.71 )

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

              padding : EdgeInsets . only ( top : Height * 10 ),

              child : Stack
              (

                children :
                [

                  // Start Of مواد التخصص
                  Padding
                  (

                    padding : EdgeInsets . only ( top : Height * 5.5 ),

                    child : Center
                    (

                      child : Text ( "مواد التخصص" , style : TextStyle ( fontSize : Width * 6.074 , fontWeight : FontWeight . bold , color : Colors . white ) )

                    )

                  ),
                  // End Of مواد التخصص

                  // STart Of List View
                  Container
                  (

                    height : Height * 85.2,
                    margin : EdgeInsets . only ( top : Height * 3 , left : Width * 4 , right : Width * 6 ),

                    decoration : BoxDecoration
                    (

                      border : Border . all ( color : Colors . blueAccent . shade700 , width : Width * 2.5 ),
                      borderRadius : BorderRadius . circular ( Width * 12.5 )

                    ),

                    child : Padding
                    (

                      padding : EdgeInsets . only ( top : Height * 7 ),

                      child : list_view ( )

                    )

                  ),
                  // End Of List View

                  // Start Of Arrow Up
                  x .Arrows ( top : Height * 7.2 , left : Width * 83.1 , icon : Icons . keyboard_arrow_up ),
                  // End Of Arrow Up

                  // Start Of Arrow down
                  x .Arrows ( top : Height * 72 , left : Width * 83.1 , icon : Icons . keyboard_arrow_down ),
                  // End Of Arrow down

                  // Start Of Add subject Button
                  Padding
                  (

                    padding : EdgeInsets . only ( top : Height * 80.5 , left : Width * 3.66 ),

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

          padding : EdgeInsets . only ( top : Height * 1.46 , bottom : Height * 1.16 ),
          margin : EdgeInsets . only ( bottom : Height * 1.46 ),

          decoration : BoxDecoration
          (

            color : Colors . black,
            border : Border . all ( color : Colors . blueAccent . shade700 , width : Width * 2.44 ),
            borderRadius : BorderRadius . circular ( Width * 97.6 )

          ),

          child : Text ( Subject_Name , style : TextStyle ( fontSize : Width * 3.887 , color : Colors . white , fontWeight : FontWeight . bold ) , textAlign : TextAlign . center )

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