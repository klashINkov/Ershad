//Done

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:ershad/main%20screens/New/Done_temp.dart';

import 'package:ershad/main screens/Done_Home Page.dart';

// Start Of Add_Subjects Class
class Add_Subjects extends StatefulWidget
{

  @override
  State < Add_Subjects > createState ( ) => _Add_SubjectsState ( ) ;

}
// End Of Add_Subjects Class

// Start Of _Add_SubjectsState Class
class _Add_SubjectsState extends State < Add_Subjects >
{

  var x = temp ( ) ;

  // Start Of build Widget
  @override
  Widget build ( BuildContext context )
  {

    return Scaffold
    (

      extendBodyBehindAppBar : true ,

      appBar :  AppBar
      (

        title : Text
        (

          "إضافة مادة",
          style : TextStyle
          (

            fontSize : 35,
            fontWeight : FontWeight . bold,
            color : Colors . white

          ),

        ),
        centerTitle : true,
        backgroundColor : Colors . transparent,
        elevation : 0,

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

      body : SingleChildScrollView
      (

        child : Container
        (

          height : 690,
          color : Colors . teal . shade700,

          child : Column
          (

            mainAxisAlignment : MainAxisAlignment . center,

            children :
            [

              // Start of اسم المادة TextField
              x . Text_Field ( label : "اسم المادة" , hint : "" ),
              // End of اسم المادة TextField

              // Start of رقم المادة TextField
              x . Text_Field ( label : "رقم المادة" , hint : "" ),
              // End of رقم المادة TextField

              // Start of المتطلب السابق للمادة TextField
              x . Text_Field ( label : "المتطلب السابق للمادة" , hint : "اسم المتطلب ( رقم المتطلب )" ),
              // End of المتطلب السابق للمادة TextField

              // Start of كلية المادة TextField
              x . Text_Field ( label : "كلية المادة" , hint : "اسم الكلية التي تتبع لها المادة" ),
              // End of كلية المادة TextField

              // Start Of Add Button
              Container
              (

                height : 50,
                width : 250,
                margin : EdgeInsets . only ( top : 20 ),

                decoration : BoxDecoration
                (

                  color : Colors . blue,
                  borderRadius : BorderRadius . circular ( 20 )

                ),

                child : FlatButton
                (

                    onPressed : ( ) { },

                    child : Text
                    (

                      "إضافة",

                      style : TextStyle
                      (

                        color : Colors . white,
                        fontSize : 25

                      )

                    )

                  )

              )
              // End Of Add Button

            ]

          )

        )

      )

    );

  }
  // End Of build Widget

}
// End Of _Add_SubjectsState Class