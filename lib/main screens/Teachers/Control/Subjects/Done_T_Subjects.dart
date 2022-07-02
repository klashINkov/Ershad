//Done

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

import 'package:ershad/main screens/Teachers/Control/Done_Add_Subjects.dart';

import 'package:ershad/main screens/Colleges And Specialties/Subject/Done_Subject.dart';

// Start Of Subjects Class
class T_Subjects extends StatelessWidget
{

  var x = temp ( ) ;
  String title , Desc ;
  List < String >  subjects ;

  T_Subjects ( { required this . title , required this . Desc , required this . subjects } ) ;

  // Start of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true,

      appBar : AppBar
      (

        title  : Text
        (

          title,

          style : TextStyle
          (

            fontSize : 20,
            color : Colors . white,
            fontWeight : FontWeight . bold

          )

        ),

        backgroundColor : Colors . transparent,
        elevation : 0,
        centerTitle : true,

        actions :
        [

          IconButton
          (

            onPressed : ( )
            {

              Navigator . of ( context ) . pushAndRemoveUntil ( MaterialPageRoute ( builder : ( context ) => Home ( ) ) , ( route ) => false ) ;

            },

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

                      child : Text
                      (

                        "مواد التخصص الاجبارية",

                        style : TextStyle
                        (

                          fontSize : 25,
                          fontWeight : FontWeight . bold,
                          color : Colors . white

                        )

                      )

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

            child : Text
            (

              item,

              style : TextStyle ( fontSize : 18 , color : Colors . white , fontWeight : FontWeight . bold ),

              textAlign : TextAlign . center,

            )

          )

        );

      }

    )

  );
  // End of list_view Widget

  // Start of List_View_On_Tap Function
  void List_View_On_Tap ( final item , BuildContext context )
  {

    Navigator . push
    (

      context , MaterialPageRoute
      (

        builder : ( context ) => Subject
        (

          "مختبر قواعد البيانات",
          "0601242",
          "هذا المساق هو عبارة عن استكمال او الاصح تطبيق ما تم دراسته في مساق قواعد البيانات وبشكل مختصر هذا المساق يتحدث عن كيفية انشاء قواعد البيانات",
          "قواعد البيانات ( 0601241 )",
          "كلية تكنولوجيا المعلومات والاتصالات",
          "fdfdf"
        )

      )

    );

  }
  // End of List_View_On_Tap Function

}
// End Of Subjects Class