// Done

// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_Subject.dart';

// Start Of Subjects Class
class Subjects extends StatelessWidget
{

  var x = temp ( ) ;
  String Specialty_Name , Desc ;
  List < dynamic > subjects ;

  Subjects ( { required this . Specialty_Name , required this . Desc , required this . subjects } ) ;

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

        // color : Colors . green . shade900,
        decoration : BoxDecoration
        (

            gradient :  LinearGradient
            (

                colors : [ Color (0xff780206) , Color(0xFF061161) ]

              )
        ),

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

                  height : 250,
                  margin : EdgeInsets . only ( top : 90 , left : 25 , right : 25 ),

                  decoration : BoxDecoration
                  (

                    border : Border . all ( color : Colors . amber , width : 10 ),
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
                x . Arrows (top : 245 , left : 341 , icon : Icons . keyboard_arrow_down ),
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

                    child : Text ( "مواد التخصص الاجبارية" , style : TextStyle ( fontSize : 25 , fontWeight : FontWeight . bold , color : Colors . white ) )

                  )

                ),
                // End Of مواد التخصص الاجبارية

                // STart Of List View
                Container
                (

                  height : 305,
                  margin : EdgeInsets . only ( top : 25 , left : 25 , right : 25 ),

                  decoration : BoxDecoration
                  (

                    border : Border . all ( color : Colors . blueAccent . shade700 , width : 10 ),
                    borderRadius : BorderRadius . circular ( 50 ),

                  ),

                  child : Padding
                  (

                    padding : EdgeInsets . only ( top : 45 , bottom : 15 ),

                    child : list_view ( )

                  )

                ),
                // End Of List View

                // Start Of Arrow Up
                x . Arrows (top : 45 , left : 341 , icon : Icons . keyboard_arrow_up ),
                // End Of Arrow Up

                // Start Of Arrow down
                x . Arrows (top : 230 , left : 341 , icon : Icons . keyboard_arrow_down ),
                // End Of Arrow down

              ]

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

      final item = subjects [ index ] ;

      return ListTile
      (

        onTap : ( ) { List_View_On_Tap ( item , context ) ; },

        title : Container
        (

          padding : EdgeInsets . only ( top : 10 , bottom : 10  ),
          margin : EdgeInsets . only ( right : 5 , bottom : 7 ),

          decoration : BoxDecoration
          (

            color : Colors . black,
            border : Border . all ( color : Colors . blueAccent . shade700 , width : 5 ),
            borderRadius : BorderRadius . circular ( 40 )

          ),

          child : Text ( item , style : TextStyle ( fontSize : 16 , color : Colors . white , fontWeight : FontWeight . bold ) , textAlign : TextAlign . center )

        )

      );

    }

  );
  // End of list_view Widget

  // Start of List_View_On_Tap Function
  void List_View_On_Tap ( final item , BuildContext context )
  {

    Navigator. push
    (

      context , MaterialPageRoute
      (

          builder : ( context ) => Subject
          (

            name : "مختبر قواعد البيانات",
            college : "كلية تكنولوجيا المعلومات والاتصالات",
            previous : "قواعد البيانات ( 0601241 )",
            NO : "0601242",
            syllabus : "fdfdf",
            DESC : "هذا المساق هو عبارة عن استكمال او الاصح تطبيق ما تم دراسته في مساق قواعد البيانات وبشكل مختصر هذا المساق يتحدث عن كيفية انشاء قواعد البيانات"

           )

      )

   );

  }
  // End of List_View_On_Tap Function

}
// End Of Subjects Class