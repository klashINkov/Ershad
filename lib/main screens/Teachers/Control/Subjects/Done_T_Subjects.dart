//Done

// ignore_for_file: must_be_immutable, file_names, camel_case_types, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:ershad/main screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Control/Done_Add_Subjects.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_Subject.dart';

// Start Of Subjects Class
class T_Subjects extends StatelessWidget
{

  var x = temp ( ) ;
  String Specialty_Name , College_Name , Desc ;
  List < String > subjects ;

  T_Subjects ( { required this . Specialty_Name , required this . College_Name , required this . Desc , required this . subjects } ) ;

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
          child : Text ( Specialty_Name , maxLines : 2, textAlign : TextAlign . center , style : TextStyle ( fontSize : 18 , color : Colors . white , fontWeight : FontWeight . bold ) ),
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

        color : Colors . green . shade900,

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

                  // Start Of مواد التخصص الاجبارية
                  Padding
                  (

                    padding : EdgeInsets . only ( top : 40 ),

                    child : Center
                    (

                      child : Text ( "مواد التخصص الاجبارية" , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) )

                    )

                  ),
                  // End Of مواد التخصص الاجبارية

                  // STart Of List View
                  Container
                  (

                    height : 570,
                    margin : EdgeInsets . only ( top : 25 , left : 25 , right : 25 ),

                    decoration : BoxDecoration
                    (

                      border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                      borderRadius : BorderRadius . circular ( 50 )

                    ),

                    child : Padding
                    (

                      padding : EdgeInsets . only ( top : 50 , bottom : 30 ),

                      child : Column
                      (

                        mainAxisAlignment : MainAxisAlignment . center,

                        children :
                        [

                          list_view ( )

                        ]
                      )

                    )

                  ),
                  // End Of List View

                  // Start Of Arrow Up
                  x .Arrows ( top : 50 , left : 334 , icon : Icons . keyboard_arrow_up ),
                  // End Of Arrow Up

                  // Start Of Arrow down
                  x .Arrows ( top : 470 , left : 335 , icon : Icons . keyboard_arrow_down ),
                  // End Of Arrow down

                  // Start Of Add subject Button
                  Padding
                  (

                    padding : EdgeInsets . only ( top : 550 , left : 15 ),

                    child : FloatingActionButton
                    (

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
  Widget list_view ( )  => Flexible
  (

    child : ListView . builder
    (

      shrinkWrap : true,
      padding : EdgeInsets . only ( top : 0 ),
      itemCount : subjects . length,

      itemBuilder : ( context , index )
      {

        final item = subjects [ index ] ;

        return ListTile
        (

          onTap : ( ) { List_View_On_Tap ( item , context ) ; },

          title : Container
          (

            color : Colors . black,
            padding : EdgeInsets . only ( top : 5 , bottom : 5 , left : 6 , right : 6 ),
            margin : EdgeInsets . only ( left : 5 , right : 5 ),

            child : Text ( item , style : TextStyle ( fontSize : 18 , color : Colors . white , fontWeight : FontWeight . bold ) , textAlign : TextAlign . center )

          )

        );

      }

    )

  );
  // End of list_view Widget

  // Start of List_View_On_Tap Function
  void List_View_On_Tap ( String Subject_Name , BuildContext context ) async
  {

    String path = "" , id = Subject_Name ;

    if ( College_Name == "كلية الهندسة" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name/وصف التخصص و اسماء المواد و بياناتها/بيانات المواد" ;

    }

    if ( College_Name == "كلية العلوم" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

    }

    if ( College_Name == "كلية تكنولوجيا المعلومات و الاتصالات" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

    }

    if ( College_Name == "كلية الأعمال" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

    }

    if ( College_Name == "كلية الاداب" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

    }

    if ( College_Name == "كلية العلوم التربوية" )
    {

      path = "/الكليات و التخصصات/$College_Name/$Specialty_Name" ;

    }


    var varibel = await FirebaseFirestore . instance . collection ( path ) . doc ( id ) . get ( ) ;

    Navigator. push
    (

      context , MaterialPageRoute
      (

          builder : ( context ) => Subject
          (

            Name : Subject_Name,
            Previous : varibel [ "Previous" ],
            NO : varibel [ "NO" ],
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